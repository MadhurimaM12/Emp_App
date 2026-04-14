import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  base: "/",   // ✅ Important for Vercel deployment

  plugins: [
    react(),
    tailwindcss()
  ],

  // ⚠️ Optional: keep proxy ONLY for local development
  server: {
    proxy: {
      '/api': {
        target: 'http://localhost:4000',
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '/emp-api')
      }
    }
  }
})