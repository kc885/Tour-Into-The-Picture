/**
   This file is part of Inpaint.

   Copyright Christoph Heindl 2014

   Inpaint is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   Inpaint is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with Inpaint.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef INPAINT_PYRAMID_H
#define INPAINT_PYRAMID_H

#include <opencv2/core/core.hpp>

namespace Inpaint {

    /** 
        Compute a sequence of lower resolution images.

        \param i Integral image
        \param r Rectangle to compute sum for
        \return sum as scalar. 
    */
    void imagePyramid(cv::InputArray image, cv::OutputArrayOfArrays pyr, cv::Size minimumSize, int interpolationType);    

}
#endif