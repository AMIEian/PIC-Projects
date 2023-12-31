const char  font[][8] =
{
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // sp
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // !
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // "
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // #
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // $
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // %
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // &
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // '
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // (
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // )
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // *
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // +
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // ,
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // -
    { 0xFF, 0xFF, 0xFF, 0xF9, 0xFF, 0xF9, 0xFF, 0xFF },   // .
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // /
    { 0xff, 0x89, 0xc3, 0x99, 0x99, 0xc3, 0x91, 0xff },   // 0
    { 0xff, 0xe7, 0xe7, 0xe7, 0xe3, 0xc3, 0xe7, 0xff },   // 1
    { 0xff, 0xc3, 0xc3, 0xf9, 0xB9, 0x81, 0xBf, 0xff },   // 2
    { 0xff, 0xbf, 0xc3, 0xb9, 0xbd, 0xc3, 0xC7, 0xff },   // 3
    { 0xff, 0xcd, 0xcf, 0x81, 0xc7, 0xcf, 0xcb, 0xff },   // 4
    { 0xff, 0x9f, 0x81, 0x99, 0xf9, 0xc3, 0xc1, 0xff },   // 5
    { 0xff, 0x99, 0xc3, 0x99, 0xf9, 0xc3, 0xc1, 0xff },   // 6
    { 0xff, 0xcf, 0x81, 0xE7, 0x9d, 0xe7, 0xcf, 0xff },   // 7
    { 0xff, 0x99, 0xc3, 0x99, 0x99, 0xc3, 0xc3, 0xff },   // 8
    { 0xff, 0x83, 0xc3, 0x9f, 0x9D, 0xc3, 0x9D, 0xff },   // 9
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // :
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // ;
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // <
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // =
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // >
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // ?
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // @
    { 0xFF, 0x81, 0xE7, 0x99, 0xC3, 0x99, 0x99, 0xFF },   // A
    { 0xFF, 0xC1, 0xC1, 0x99, 0x99, 0xC1, 0xC1, 0xFF },   // B
    { 0xFF, 0xF9, 0xC3, 0x99, 0x99, 0xC3, 0xF9, 0xFF },   // C
    { 0xff, 0x99, 0xC1, 0x99, 0x99, 0xc1, 0x99, 0xff },   // D
    { 0xff, 0xe1, 0x81, 0xb9, 0xb9, 0x81, 0xe1, 0xff },   // E
    { 0xff, 0xe1, 0x81, 0xF9, 0xB9, 0xF9, 0xe1, 0xff },   // F
    { 0xFF, 0x89, 0xC3, 0x99, 0x99, 0xC3, 0xF9, 0xFF },   // G
    { 0xff, 0x81, 0x99, 0x99, 0x99, 0x99, 0x81, 0xff },   // H
    { 0xFF, 0xE7, 0xC3, 0xE7, 0xE7, 0xC3, 0xE7, 0xFF },   // I
    { 0xFF, 0xCF, 0x87, 0xC9, 0xCF, 0xE3, 0xCF, 0xFF },   // J
    { 0xFF, 0xE1, 0x99, 0xC9, 0xD9, 0x99, 0xE9, 0xFF },   // K
    { 0xff, 0xf9, 0xf9, 0xc1, 0xf9, 0xc1, 0xf9, 0xff },   // L
    { 0xFF, 0xA5, 0x99, 0xBD, 0x99, 0xBD, 0xA5, 0xFF },   // M
    { 0xff, 0xad, 0x9d, 0x9d, 0xb9, 0xb9, 0xb5, 0xff },   // N
    { 0xff, 0x99, 0xc3, 0x99, 0x99, 0xc3, 0x99, 0xff },   // O
    { 0xFF, 0xc1, 0xC1, 0xF9, 0x99, 0xF9, 0x99, 0xFF },   // P
    { 0xff, 0xd9, 0xe3, 0xc9, 0xd9, 0x83, 0xd9, 0xff },   // Q
    { 0xFF, 0xe1, 0xC1, 0xc9, 0x99, 0x99, 0x99, 0xFF },   // R
    { 0xff, 0xcf, 0xc3, 0x99, 0x99, 0xc3, 0xf3, 0xff },   // S
    { 0xff, 0xe7, 0x81, 0xE7, 0xa5, 0xe7, 0xe7, 0xff },   // T
    { 0xff, 0x99, 0x99, 0x99, 0x99, 0xc3, 0x99, 0xff },   // U
    { 0xff, 0x99, 0x99, 0xc3, 0x99, 0xE7, 0x99, 0xff },   // V
    { 0xff, 0xa9, 0xa9, 0xa9, 0xa9, 0xd3, 0xa9, 0xff },   // W
    { 0xff, 0xe7, 0x99, 0xeb, 0xdb, 0x99, 0xe7, 0xff },   // X
    { 0xff, 0xe7, 0x99, 0xE7, 0x99, 0xE7, 0xdb, 0xff },   // Y
    { 0xff, 0xf7, 0x81, 0x9b, 0xd9, 0x81, 0xEF, 0xff },   // Z
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // [
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // 55
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // ]
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // ^
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // _
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },   // '
    { 0xFF, 0x81, 0xE7, 0x99, 0xC3, 0x99, 0x99, 0xFF },   // a
    { 0xFF, 0xC1, 0xC1, 0x99, 0x99, 0xC1, 0xC1, 0xFF },   // b
    { 0xFF, 0xF9, 0xC3, 0x99, 0x99, 0xC3, 0xF9, 0xFF },   // c
    { 0xff, 0x99, 0xC1, 0x99, 0x99, 0xc1, 0x99, 0xff },   // d
    { 0xff, 0xe1, 0x81, 0xb9, 0xb9, 0x81, 0xe1, 0xff },   // e
    { 0xff, 0xe1, 0x81, 0xF9, 0xB9, 0xF9, 0xe1, 0xff },   // f
    { 0xFF, 0x89, 0xC3, 0x99, 0x99, 0xC3, 0xF9, 0xFF },   // g
    { 0xff, 0x81, 0x99, 0x99, 0x99, 0x99, 0x81, 0xff },   // h
    { 0xFF, 0xE7, 0xC3, 0xE7, 0xE7, 0xC3, 0xE7, 0xFF },   // i
    { 0xFF, 0xCF, 0x87, 0xC9, 0xCF, 0xE3, 0xCF, 0xFF },   // j
    { 0xFF, 0xE1, 0x99, 0xC9, 0xD9, 0x99, 0xE9, 0xFF },   // k
    { 0xff, 0xf9, 0xf9, 0xc1, 0xf9, 0xc1, 0xf9, 0xff },   // l
    { 0xFF, 0xA5, 0x99, 0xBD, 0x99, 0xBD, 0xA5, 0xFF },   // m
    { 0xff, 0xad, 0x9d, 0x9d, 0xb9, 0xb9, 0xb5, 0xff },   // n
    { 0xff, 0x99, 0xc3, 0x99, 0x99, 0xc3, 0x99, 0xff },   // o
    { 0xFF, 0xc1, 0xC1, 0xF9, 0x99, 0xF9, 0x99, 0xFF },   // p
    { 0xff, 0xd9, 0xe3, 0xc9, 0xd9, 0x83, 0xd9, 0xff },   // q
    { 0xFF, 0xe1, 0xC1, 0xc9, 0x99, 0x99, 0x99, 0xFF },   // r
    { 0xff, 0xcf, 0xc3, 0x99, 0x99, 0xc3, 0xf3, 0xff },   // s
    { 0xff, 0xe7, 0x81, 0xE7, 0xa5, 0xe7, 0xe7, 0xff },   // t
    { 0xff, 0x99, 0x99, 0x99, 0x99, 0xc3, 0x99, 0xff },   // u
    { 0xff, 0x99, 0x99, 0xc3, 0x99, 0xE7, 0x99, 0xff },   // v
    { 0xff, 0xa9, 0xa9, 0xa9, 0xa9, 0xd3, 0xa9, 0xff },   // w
    { 0xff, 0xe7, 0x99, 0xeb, 0xdb, 0x99, 0xe7, 0xff },   // x
    { 0xff, 0xe7, 0x99, 0xE7, 0x99, 0xE7, 0xdb, 0xff },   // y
    { 0xff, 0xf7, 0x81, 0x9b, 0xd9, 0x81, 0xEF, 0xff },   // z
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },    // horiz lines

};