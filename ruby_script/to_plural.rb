#s, sh, ch, o, x のいずれかで終わる英単語の末尾には es を付ける
#f, fe のいずれかで終わる英単語には、末尾の f, fe を除き、ves を付ける
#末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語は、末尾の y を除き、ies に付け替える
#上のいずれでもない英単語の末尾には s を付ける

class String
    def to_plural
        arr_1 = %w(s sh ch o x)
        arr_2 = %w(f fe)
        arr_3 = %w(ay iy uy ey oy)
        if arr_1.any? {|w| self.end_with?(w)}
            self.concat("es")
        elsif arr_2.any? {|w| self.end_with?(w)}
            self.sub(/fe$/, "ves").sub(/f$/, "ves")
        elsif self.end_with?("y") && !(arr_3.any? {|w| self.end_with?(w)})
            self.sub(/y$/, "ies")
        else
            self.concat("s")
        end
    end
end
