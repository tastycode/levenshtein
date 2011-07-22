#include <ruby.h>
#include <string.h>
VALUE method_levenshtein(cls,strb) 
{
  VALUE stra = cls;
  if (FIX2INT(rb_str_length(stra))>FIX2INT(rb_str_length(strb))) {
    VALUE strt = stra;
    stra = strb;
    strb = strt;
  }
  int distance = FIX2INT(rb_str_length(strb))-FIX2INT(rb_str_length(stra));
  char* cstra = StringValuePtr(stra);
  char* cstrb = StringValuePtr(strb);
  int i=0;
  for (i=0;i<strlen(cstra);i++) {
    if (cstrb[i]==cstra[i]) continue;
    distance++;
  }
  return INT2FIX(distance);
}

void Init_levenshtein_ext() {
  VALUE String = rb_define_class("String",rb_cObject);
  rb_define_method(String,"levenshtein",method_levenshtein,1);
}


