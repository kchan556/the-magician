-- matchesテーブルにRLSを有効化
ALTER TABLE public.matches ENABLE ROW LEVEL SECURITY;

-- 既存のポリシーを削除
DROP POLICY IF EXISTS "Players can view their own matches" ON public.matches;

-- 新しいポリシーを作成（::text を ::uuid に修正しました）
CREATE POLICY "Players can view their own matches"
  ON public.matches
  FOR SELECT
  USING (
    auth.uid()::uuid = player1_id OR 
    auth.uid()::uuid = player2_id
  );