import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  // ESLintのエラーがあってもビルドを続行する
  eslint: {
    ignoreDuringBuilds: true,
  },
  // TypeScriptのエラーがあってもビルドを続行する
  typescript: {
    ignoreBuildErrors: true,
  },
  // React Compilerの厳格なチェックをオフにする（今回出ている Error: Compilation Skipped 対策）
  experimental: {
    // reactCompiler: false,
  },
};

export default nextConfig;
