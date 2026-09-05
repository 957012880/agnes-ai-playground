/**
 * Cloudflare Workers script for Agnes AI Playground
 * Fetches static content from GitHub and serves it
 */

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    
    // GitHub raw URL for the main HTML file
    const githubUrl = 'https://raw.githubusercontent.com/957012880/agnes-ai-playground/main/agnes-playground-v2.html';
    
    try {
      // Add cache header to avoid too many requests to GitHub
      const cache = caches.open('agnes-playground');
      
      // Fetch from GitHub
      const response = await fetch(githubUrl, {
        cf: {
          cacheTtl: 3600, // Cache for 1 hour
          cacheEverything: true
        }
      });
      
      if (!response.ok) {
        return new Response(
          `<html><body><h1>Error: Failed to load application</h1><p>Status: ${response.status}</p><p>Please check the GitHub repository.</p></body></html>`,
          { 
            status: response.status,
            headers: { 'content-type': 'text/html;charset=UTF-8' }
          }
        );
      }
      
      const html = await response.text();
      
      // Return the HTML with proper headers
      return new Response(html, {
        headers: {
          'content-type': 'text/html;charset=UTF-8',
          'cache-control': 'public, max-age=3600',
        },
      });
    } catch (error) {
      return new Response(
        `<html><body><h1>Error</h1><p>${error.message}</p></body></html>`,
        { status: 500, headers: { 'content-type': 'text/html;charset=UTF-8' } }
      );
    }
  }
};
