//
// Copyright(C) 1993-1996 Id Software, Inc.
// Copyright(C) 2005-2014 Simon Howard
// Copyright(C) 2021-2022 Graham Sanderson
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// DESCRIPTION:
//	System specific interface stuff.
//


#ifndef __R_DRAW__
#define __R_DRAW__




#if !NO_USE_DC_COLORMAP
extern const lighttable_t*	dc_colormap;
#else
extern int8_t dc_colormap_index;
#endif
extern int		dc_x;
extern int		dc_yl;
extern int		dc_yh;
extern fixed_t		dc_iscale;
extern fixed_t		dc_texturemid;

// first pixel in a column (possibly virtual) - (graham: now refers to a whole column)
extern texturecolumn_t 	dc_source;


#if !NO_RDRAW
// The span blitting interface.
// Hook in assembler or system specific BLT
//  here.
void 	R_DrawColumn (void);
void 	R_DrawColumnLow (void);

// The Spectre/Invisibility effect.
void 	R_DrawFuzzColumn (void);
void 	R_DrawFuzzColumnLow (void);

// Draw with color translation tables,
//  for player sprite rendering,
//  Green/Red/Blue/Indigo shirts.
void	R_DrawTranslatedColumn (void);
void	R_DrawTranslatedColumnLow (void);

void
R_VideoErase
( unsigned	ofs,
  int		count );

void R_VideoClear();
#endif
extern int		ds_y;
extern int		ds_x1;
extern int		ds_x2;

#if !NO_USE_DS_COLORMAP
extern const lighttable_t*	ds_colormap;
#else
extern int8_t ds_colormap_index;
#endif

extern fixed_t		ds_xfrac;
extern fixed_t		ds_yfrac;
extern fixed_t		ds_xstep;
extern fixed_t		ds_ystep;

// start of a 64*64 tile image
extern byte*		ds_source;		

#if !DOOM_TINY
extern const byte*		translationtables;
extern const byte*		dc_translation;
#else
extern byte dc_translation_index;
#endif

#if !NO_RDRAW
// Span blitting for rows, floor/ceiling.
// No Sepctre effect needed.
void 	R_DrawSpan (void);

// Low resolution mode, 160x200?
void 	R_DrawSpanLow (void);


void
R_InitBuffer
( int		width,
  int		height );




// Rendering function.
void R_FillBackScreen (void);

// If the view size is not full screen, draws a border around it.
void R_DrawViewBorder (void);

void R_DrawPixel(int x, int y, int color);
#endif

// todo graham this should go
// Initialize color translation tables,
//  for player rendering etc.
void	R_InitTranslationTables (void);

#endif
