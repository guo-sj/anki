%{
// 提取 html 标签 <b></b> 中的内容
%}
%%

"<b>"[a-zA-Z ]+"</b>" {
                  char *start = yytext + 3; // 跳过 <b>
                  char *end = strstr(start, "</b>");
                  if (!end) return 1;
                  *end = '\0';
                  printf("%s\n", start);
};
.|\n ;
%%
int main(void)
{
    yylex();
    return 0;
}
