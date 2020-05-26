Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800201E2204
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 May 2020 14:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=znSj8BmCkPJK7twnE8YC9fvUbprEeDDf6R1g3b3GlYk=; b=GqqPvMywu1F9DlnSCUbABVSS0
	EcMcOj4L85z3/Arhr2RaDwXEQ5viXF0etmjysTI63yRCoho/Iuskn1/DGTWxQdfH4kJtiQ+3RcCBH
	BJKfHXxE36TjOpWN0bU965WlDUOy/p4mn1Tv4ip1DYtqbKY0DjJbTsYkdFF3mPAalqEnLHdRUWKVk
	ybLtTMzTlflfmWVQUri2bMxXiufrNJN6C1LZGQuxDvfKfgXXl/LhZxW8p+Tw6aGNv+FXNbrNEtogI
	mfDaWyniG1wwVgACuLYIiMD268eV6bBIcT2UIUlBYc8rhxvSLNX/NDVaOyzNmikzUxsbwm5XrExXu
	mpHe+wbSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdYpP-0005lq-1d; Tue, 26 May 2020 12:37:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdYpJ-0005kz-VD
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 12:37:05 +0000
Received: from [IPv6:2003:cb:871f:5b00:15f5:3ef9:f13d:574d]
 (p200300cb871f5b0015f53ef9f13d574d.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:15f5:3ef9:f13d:574d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EFEFD2A0840;
 Tue, 26 May 2020 13:36:56 +0100 (BST)
Subject: Re: [RFC v3 1/2] v4l2: add support for colorspace conversion for
 video capture
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
 helen.koike@collabora.com, ezequiel@collabora.com, kernel@collabora.com,
 dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
 <f8549b52-4b16-06f4-a017-99c521a822a7@xs4all.nl>
 <fc13b0bb-6018-7156-33fe-5d899ba07c4a@collabora.com>
 <a6851d69-682c-df76-6c27-2a56c0906e1f@xs4all.nl>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <ce509de1-167d-e42a-e66d-de6f3826cfac@collabora.com>
Date: Tue, 26 May 2020 14:36:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <a6851d69-682c-df76-6c27-2a56c0906e1f@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_053702_276940_7182CF7E 
X-CRM114-Status: GOOD (  28.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Hans Verkuil <HansVerkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tomasz Figa <tfiga@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 25.05.20 16:25, Hans Verkuil wrote:
> On 25/05/2020 15:56, Dafna Hirschfeld wrote:
>> Hi
>>
>> On 07.05.20 15:00, Hans Verkuil wrote:
>>> On 16/04/2020 16:56, Dafna Hirschfeld wrote:
>>>> From: Philipp Zabel <p.zabel@pengutronix.de>
>>>>
>>>> For video capture it is the driver that reports the colorspace,
>>>> Y'CbCr/HSV encoding, quantization range and transfer function
>>>> used by the video, and there is no way to request something
>>>> different, even though many HDTV receivers have some sort of
>>>> colorspace conversion capabilities.
>>>>
>>>> For output video this feature already exists since the application
>>>> specifies this information for the video format it will send out, and
>>>> the transmitter will enable any available CSC if a format conversion has
>>>> to be performed in order to match the capabilities of the sink.
>>>>
>>>> For video capture we propose adding new pix_format flag:
>>>> V4L2_PIX_FMT_FLAG_HAS_CSC. The flag is set by the application,
>>>
>>> That should be V4L2_PIX_FMT_FLAG_REQUEST_CSC, since the application actively
>>> requests the use of the CSC.
>> Maybe change to V4L2_PIX_FMT_FLAG_ASK_FOR_CSC so people won't think
>> it is related to the request API ?
> 
> How about _SET_CSC? I think that's even better than REQUEST_CSC.
> 
>>>
>>>> the driver will interpret the ycbcr_enc/hsv_enc, and quantization fields
>>>> as the requested colorspace information and will attempt to
>>>> do the conversion it supports.
>>>>
>>>> Drivers set the flags
>>>> V4L2_FMT_FLAG_CSC_YCBCR_ENC,
>>>> V4L2_FMT_FLAG_CSC_HSV_ENC,
>>>> V4L2_FMT_FLAG_CSC_HSV_QUANTIZATION,
>>>
>>> That last define should be 'V4L2_FMT_FLAG_CSC_QUANTIZATION' without 'HSV_'.
>>>
>>>> in the flags field of the struct v4l2_fmtdesc during enumeration to
>>>> indicate that they support colorspace conversion for the respective field.
>>>> Currently the conversion of the fields colorspace, xfer_func is not
>>>> supported since there are no drivers that support it.
>>>>
>>>> The same API is added for the subdevices. With the flag V4L2_MBUS_FRAMEFMT_HAS_CSC
>>>
>>> Should also be REQUEST_CSC.
>>>
>>>> set by the application in the VIDIOC_SUBDEV_S_FMT ioctl and the flags
>>>> V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC, V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION
>>>> set by the driver in the VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.
>>>>
>>>> For subdevices, new 'flags' fields were added to the structs
>>>> v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed from the 'reserved' field
>>>>
>>>> Drivers do not have to actually look at the flags: if the flags are not
>>>> set, then the colorspace, ycbcr_enc and quantization fields are set to
>>>> the default values by the core, i.e. just pass on the received format
>>>> without conversion.
>>>>
>>>> Signed-off-by: Hans Verkuil <Hans Verkuil@cisco.com>
>>>> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>> ---
>>>> This is v3 of the RFC suggested originaly by Hans Verkuil:
>>>>
>>>>    https://patchwork.linuxtv.org/patch/28847/
>>>>
>>>> And then a v2 from Philipp Zabel:
>>>>
>>>>    https://patchwork.kernel.org/project/linux-media/list/?series=15483
>>>>
>>>> changes in v3:
>>>> I added the API to subdevices as well and added fixes according to
>>>> comments from Hans.
>>>> I also added a usecase for the new API for the rkisp1 driver.
>>>>
>>>> changes in v2 (reported by Philipp Zabel):
>>>>    - convert to rst
>>>>    - split V4L2_PIX_FMT_FLAG_REQUEST_CSC into four separate flags for
>>>>      colorspace, ycbcr_enc/hsv_enc, quantization, and xfer_func
>>>>    - let driver set flags to indicate supported features
>>>>
>>>> [1] https://patchwork.linuxtv.org/patch/28847/
>>>>
>>>>    .../media/v4l/pixfmt-reserved.rst             |  6 +++
>>>>    .../media/v4l/pixfmt-v4l2-mplane.rst          | 16 ++-----
>>>>    .../userspace-api/media/v4l/pixfmt-v4l2.rst   | 36 +++++++++++++---
>>>>    .../media/v4l/subdev-formats.rst              | 42 +++++++++++++++++--
>>>>    .../media/v4l/vidioc-enum-fmt.rst             | 18 ++++++++
>>>>    .../v4l/vidioc-subdev-enum-mbus-code.rst      | 23 ++++++++++
>>>>    drivers/media/v4l2-core/v4l2-ioctl.c          | 19 ++++++++-
>>>>    drivers/media/v4l2-core/v4l2-subdev.c         |  7 ++++
>>>>    include/uapi/linux/v4l2-mediabus.h            |  5 ++-
>>>>    include/uapi/linux/v4l2-subdev.h              |  5 ++-
>>>>    include/uapi/linux/videodev2.h                |  4 ++
>>>>    11 files changed, 158 insertions(+), 23 deletions(-)
>>>>
>>>> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
>>>> index 59b9e7238f90..fa8dada69f8c 100644
>>>> --- a/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/pixfmt-reserved.rst
>>>
>>> Why on earth did the documentation of these pixel format flags end up in
>>> pixfmt-reserved.rst?
>>>
>>> Can you make a patch that moves this to pixfmt-v4l2.rst?
>>>
>>>> @@ -280,3 +280,9 @@ please make a proposal on the linux-media mailing list.
>>>>    	by RGBA values (128, 192, 255, 128), the same pixel described with
>>>>    	premultiplied colors would be described by RGBA values (64, 96,
>>>>    	128, 128)
>>>> +    * - ``V4L2_PIX_FMT_FLAG_HAS_CSC``
>>>> +      - 0x00000002
>>>> +      - Set by the application. It is only used for capture and is
>>>> +	ignored for output streams. If set, then request the driver to do
>>>> +	colorspace conversion from the received colorspace, only conversions
>>>> +	of Ycbcr encoding, HSV encoding and quantization are supported.
>>>
>>> I'd replace the part "If set..." with this:
>>>
>>> ----------
>>> If set, then request the driver to do colorspace conversion from the received
>>> colorspace to the requested colorspace values. If a colorimetry field
>>> (``colorspace``, ``xfer_func``, ``ycncr_enc`` or ``quantization``) is set to 0,
>>> then that colorimetry setting will remain unchanged from what was received.
>>> So to just change the quantization only the ``quantization`` field shall be set
>>> to a non-zero value (``V4L2_QUANTIZATION_FULL_RANGE`` or
>>> ``V4L2_QUANTIZATION_LIM_RANGE``) and all other colorimetry fields shall be set to 0.
>>>
>>> To check which conversions are supported by the hardware for the current pixel
>>> format, see :ref:`fmtdesc-flags`.
>>> ----------
>>>
>>>
>>>> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
>>>> index 444b4082684c..66f3365d7b72 100644
>>>> --- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
>>>> @@ -105,29 +105,21 @@ describing all planes of that format.
>>>>        * - __u8
>>>>          - ``ycbcr_enc``
>>>>          - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
>>>> -        This information supplements the ``colorspace`` and must be set by
>>>> -	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	See struct :c:type:`v4l2_pix_format`.
>>>>        * - __u8
>>>>          - ``hsv_enc``
>>>>          - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
>>>> -        This information supplements the ``colorspace`` and must be set by
>>>> -	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	See struct :c:type:`v4l2_pix_format`.
>>>>        * - }
>>>>          -
>>>>        * - __u8
>>>>          - ``quantization``
>>>>          - Quantization range, from enum :c:type:`v4l2_quantization`.
>>>> -        This information supplements the ``colorspace`` and must be set by
>>>> -	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	See struct :c:type:`v4l2_pix_format`.
>>>>        * - __u8
>>>>          - ``xfer_func``
>>>>          - Transfer function, from enum :c:type:`v4l2_xfer_func`.
>>>> -        This information supplements the ``colorspace`` and must be set by
>>>> -	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	See struct :c:type:`v4l2_pix_format`.
>>>>        * - __u8
>>>>          - ``reserved[7]``
>>>>          - Reserved for future extensions. Should be zeroed by drivers and
>>>> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
>>>> index 759420a872d6..ce57718cd66b 100644
>>>> --- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
>>>> @@ -110,8 +110,8 @@ Single-planar format structure
>>>>          - ``colorspace``
>>>>          - Image colorspace, from enum :c:type:`v4l2_colorspace`.
>>>>            This information supplements the ``pixelformat`` and must be set
>>>> -	by the driver for capture streams and by the application for
>>>> -	output streams, see :ref:`colorspaces`.
>>>> +	by the driver for capture streams and by the application for output
>>>> +	streams, see :ref:`colorspace`.
>>>
>>> This doesn't appear to change anything.
>>>
>>>>        * - __u32
>>>>          - ``priv``
>>>>          - This field indicates whether the remaining fields of the
>>>> @@ -148,13 +148,31 @@ Single-planar format structure
>>>>          - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
>>>>            This information supplements the ``colorspace`` and must be set by
>>>>    	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	streams, see :ref:`colorspaces`. If the application sets the
>>>> +	flag ``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set
>>>> +	this field for a capture stream to request a specific Y'CbCr encoding
>>>> +	for the captured image data. The driver will attempt to do the
>>>> +	conversion to the specified Y'CbCr encoding or return the encoding it
>>>> +	will use if it can't do the conversion. This field is ignored for
>>>> +	non-Y'CbCr pixelformats. The driver indicates that ycbcr_enc conversion
>>>> +	is supported by setting the flag V4L2_FMT_FLAG_CSC_YCBCR_ENC on the
>>>> +	on the corresponding struct :c:type:`v4l2_fmtdesc` during enumeration.
>>>
>>> on the on the -> in the
>>>
>>>> +	See :ref:`fmtdesc-flags`
>>>>        * - __u32
>>>>          - ``hsv_enc``
>>>>          - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
>>>>            This information supplements the ``colorspace`` and must be set by
>>>>    	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	streams, see :ref:`colorspaces`. If the application sets the flag
>>>> +	``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set this
>>>> +	field for a capture stream to request a specific HSV encoding for the
>>>> +	captured image data. The driver will attempt to do the conversion to
>>>> +	the specified HSV encoding or return the encoding it will use if it
>>>> +	can't do the conversion. This field is ignored for non-HSV
>>>> +	pixelformats. The driver indicates that hsv_enc conversion
>>>> +	is supported by setting the flag V4L2_FMT_FLAG_CSC_HSV_ENC on the
>>>> +	on the corresponding struct :c:type:`v4l2_fmtdesc` during enumeration.
>>>
>>> Ditto.
>>>
>>>> +	See :ref:`fmtdesc-flags`
>>>>        * - }
>>>>          -
>>>>        * - __u32
>>>> @@ -162,7 +180,15 @@ Single-planar format structure
>>>>          - Quantization range, from enum :c:type:`v4l2_quantization`.
>>>>            This information supplements the ``colorspace`` and must be set by
>>>>    	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	streams, see :ref:`colorspaces`. If the application sets the flag
>>>> +	``V4L2_PIX_FMT_FLAG_HAS_CSC`` then the application can set
>>>> +	this field for a capture stream to request a specific quantization
>>>> +	range for the captured image data. The driver will attempt to do the
>>>> +	conversion to the specified quantization range or return the
>>>> +	quantization it will use if it can't do the conversion.  The driver
>>>> +	indicates that quantization conversion is supported by setting the flag
>>>> +	V4L2_FMT_FLAG_CSC_QUANTIZATION on the on the corresponding struct
>>>
>>> Ditto
>>>
>>>> +	:c:type:`v4l2_fmtdesc` during enumeration. See :ref:`fmtdesc-flags`
>>>>        * - __u32
>>>>          - ``xfer_func``
>>>>          - Transfer function, from enum :c:type:`v4l2_xfer_func`.
>>>> diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> index 9a4d61b0d76f..f1d4ca29a3e8 100644
>>>> --- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
>>>> @@ -49,13 +49,33 @@ Media Bus Formats
>>>>          - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
>>>>            This information supplements the ``colorspace`` and must be set by
>>>>    	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	streams, see :ref:`colorspaces`. If the application sets the
>>>> +	flag ``V4L2_MBUS_FRAMEFMT_HAS_CSC`` the the application can set
>>>> +	this field for a capture stream to request a specific Y'CbCr encoding
>>>> +	for the mbus data. The driver will attempt to do the
>>>
>>> mbus -> media bus
>>>
>>>> +	conversion to the specified Y'CbCr encoding or return the encoding it
>>>> +	will use if it can't do the conversion. This field is ignored for
>>>> +	non-Y'CbCr pixelformats. The driver indicates that ycbcr_enc conversion
>>>
>>> This is a media bus format, not a pixelformat.
>>>
>>>> +	is supported by setting the flag V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC on
>>>
>>> on -> in
>>>
>>>> +	the corresponding struct c:type:`v4l2_subdev_mbus_code_enum` during
>>>> +	enumeration. See :ref:`vidioc-subdev-enum-mbus-code.rst <v4l2-subdev-mbus-code-flags>`
>>>> +
>>>>        * - __u16
>>>>          - ``quantization``
>>>>          - Quantization range, from enum :c:type:`v4l2_quantization`.
>>>>            This information supplements the ``colorspace`` and must be set by
>>>>    	the driver for capture streams and by the application for output
>>>> -	streams, see :ref:`colorspaces`.
>>>> +	streams, see :ref:`colorspaces`. If the application sets the
>>>> +	flag ``V4L2_MBUS_FRAMEFMT_HAS_CSC`` the the application can set
>>>> +	this field for a capture stream to request a specific quantization
>>>> +	encoding for the mbus data. The driver will attempt to do the
>>>
>>> mbus -> media bus
>>>
>>>> +	conversion to the specified quantization or return the quantization it
>>>> +	will use if it can't do the conversion. The driver indicates that
>>>> +	quantization conversion is supported by setting the flag
>>>> +	V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION on the corresponding struct
>>>
>>> on -> in
>>>
>>>> +	c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
>>>> +	See :ref:`vidioc-subdev-enum-mbus-code.rst <v4l2-subdev-mbus-code-flags>`
>>>> +
>>>>        * - __u16
>>>>          - ``xfer_func``
>>>>          - Transfer function, from enum :c:type:`v4l2_xfer_func`.
>>>> @@ -63,10 +83,26 @@ Media Bus Formats
>>>>    	the driver for capture streams and by the application for output
>>>>    	streams, see :ref:`colorspaces`.
>>>>        * - __u16
>>>> -      - ``reserved``\ [11]
>>>> +      - ``flags``
>>>> +      - flags see:  :ref:v4l2-mbus-framefmt-flags
>>>
>>> flags see: -> See:
>>>
>>>> +    * - __u16
>>>> +      - ``reserved``\ [10]
>>>>          - Reserved for future extensions. Applications and drivers must set
>>>>    	the array to zero.
>>>>    
>>>> +.. _v4l2-mbus-framefmt-flags:
>>>> +
>>>> +.. flat-table:: v4l2_mbus_framefmt Flags
>>>> +    :header-rows:  0
>>>> +    :stub-columns: 0
>>>> +    :widths:       3 1 4
>>>> +
>>>> +    * - ``V4L2_MBUS_FRAMEFMT_HAS_CSC``
>>>> +      - 0x0001
>>>> +      - Set by the application. It is only used for capture and is
>>>> +	ignored for output streams. If set, then request the subdevice to do
>>>> +	colorspace conversion from the received colorspace, only conversions
>>>> +	of Ycbcr encoding, and quantization are supported.
>>>
>>> Replace by a similar text as for V4L2_PIX_FMT_FLAG_HAS_CSC.
>>>
>>>>    
>>>>    
>>>>    .. _v4l2-mbus-pixelcode:
>>>> diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>>> index 7e3142e11d77..125f074543af 100644
>>>> --- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
>>>> @@ -145,6 +145,24 @@ formats in preference order, where preferred formats are returned before
>>>>    	parameters are detected. This flag can only be used in combination
>>>>    	with the ``V4L2_FMT_FLAG_COMPRESSED`` flag, since this applies to
>>>>    	compressed formats only. It is also only applies to stateful codecs.
>>>> +    * - ``V4L2_FMT_FLAG_CSC_YCBCR_ENC``
>>>> +      - 0x0010
>>>> +      - The driver allows the application to try to change the default
>>>> +	ycbcr encoding. This flag is relevant only for capture devices.
>>>> +	The application can ask to configure the ycbcr_enc of the capture device
>>>> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
>>>
>>> add: ...ioctl with ``V4L2_FMT_FLAG_REQUEST_CSC`` set. (this should probably be
>>> a reference to the REQUEST_CSC flag documentation).
>>>
>>>> +    * - ``V4L2_FMT_FLAG_CSC_HSV_ENC``
>>>> +      - 0x0010
>>>> +      - The driver allows the application to try to change the default
>>>> +	hsv encoding. This flag is relevant only for capture devices.
>>>> +	The application can ask to configure the hsv_enc of the capture device
>>>> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
>>>
>>> Ditto. Also: hsv -> HSV.
>>>
>>>> +    * - ``V4L2_FMT_FLAG_CSC_QUANTIZATION``
>>>> +      - 0x0020
>>>> +      - The driver allows the application to try to change the default
>>>> +	quantization. This flag is relevant only for capture devices.
>>>> +	The application can ask to configure the quantization of the capture device
>>>> +	when calling the :c:func:`VIDIOC_S_FMT` ioctl.
>>>
>>> Ditto.
>>>
>>>>    
>>>>    
>>>>    Return Value
>>>> diff --git a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
>>>> index 35b8607203a4..4ad87cb74f57 100644
>>>> --- a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
>>>> +++ b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
>>>> @@ -78,11 +78,34 @@ information about the try formats.
>>>>          - ``which``
>>>>          - Media bus format codes to be enumerated, from enum
>>>>    	:ref:`v4l2_subdev_format_whence <v4l2-subdev-format-whence>`.
>>>> +    * - __u32
>>>> +      - ``flags``
>>>> +      - see :ref:`v4l2-subdev-mbus-code-flags`
>>>
>>> see -> See
>>>
>>>>        * - __u32
>>>>          - ``reserved``\ [8]
>>>>          - Reserved for future extensions. Applications and drivers must set
>>>>    	the array to zero.
>>>>    
>>>> +.. _v4l2-subdev-mbus-code-flags:
>>>> +
>>>> +
>>>> +.. tabularcolumns:: |p{4.4cm}|p{4.4cm}|p{7.7cm}|
>>>> +
>>>> +.. flat-table:: flags in struct v4l2_subdev_mbus_code_enum
>>>> +    :header-rows:  0
>>>> +    :stub-columns: 0
>>>> +    :widths:       1 1 2
>>>> +
>>>> +    * - V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC
>>>> +      - 0x00000001
>>>> +      - The driver supports setting the ycbcr encoding by the application
>>>> +	when calling the VIDIOC_SUBDEV_S_FMT ioctl. see :ref:`v4l2-mbus-format`
>>>
>>> see -> See
>>>
>>>> +	on how to do this.
>>>> +    * - V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION
>>>> +      - 0x00000002
>>>> +      - The driver supports setting the quantization by the application
>>>> +	when calling the VIDIOC_SUBDEV_S_FMT ioctl. see :ref:`v4l2-mbus-format`
>>>
>>> see -> See
>>>
>>>> +	on how to do this.
>>>>    
>>>>    Return Value
>>>>    ============
>>>> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> index b2ef8e60ea7d..3c7ffb6b15cb 100644
>>>> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
>>>> @@ -1029,6 +1029,15 @@ static void v4l_sanitize_format(struct v4l2_format *fmt)
>>>>    		fmt->fmt.pix_mp.num_planes = min_t(u32, fmt->fmt.pix_mp.num_planes,
>>>>    					       VIDEO_MAX_PLANES);
>>>>    
>>>> +	if (fmt->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
>>>> +		if (fmt->fmt.pix_mp.flags & V4L2_PIX_FMT_FLAG_HAS_CSC)
>>>> +			return;
>>>> +		fmt->fmt.pix_mp.colorspace = V4L2_COLORSPACE_DEFAULT;
>>>> +		fmt->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>>>> +		fmt->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
>>>> +		fmt->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
>>>> +	}
>>>> +
>>>>    	/*
>>>>    	 * The v4l2_pix_format structure has been extended with fields that were
>>>>    	 * not previously required to be set to zero by applications. The priv
>>>> @@ -1043,8 +1052,16 @@ static void v4l_sanitize_format(struct v4l2_format *fmt)
>>>>    	    fmt->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
>>>>    		return;
>>>>    
>>>> -	if (fmt->fmt.pix.priv == V4L2_PIX_FMT_PRIV_MAGIC)
>>>> +	if (fmt->fmt.pix.priv == V4L2_PIX_FMT_PRIV_MAGIC) {
>>>> +		if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
>>>> +		    fmt->fmt.pix.flags & V4L2_PIX_FMT_FLAG_HAS_CSC)
>>>> +			return;
>>>> +		fmt->fmt.pix.colorspace = V4L2_COLORSPACE_DEFAULT;
>>>> +		fmt->fmt.pix.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>>>> +		fmt->fmt.pix.quantization = V4L2_QUANTIZATION_DEFAULT;
>>>> +		fmt->fmt.pix.xfer_func = V4L2_XFER_FUNC_DEFAULT;
>>>>    		return;
>>>> +	}
>>>>    
>>>>    	fmt->fmt.pix.priv = V4L2_PIX_FMT_PRIV_MAGIC;
>>>>    
>>>> diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
>>>> index a376b351135f..51e009936aad 100644
>>>> --- a/drivers/media/v4l2-core/v4l2-subdev.c
>>>> +++ b/drivers/media/v4l2-core/v4l2-subdev.c
>>>> @@ -477,6 +477,13 @@ static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
>>>>    	case VIDIOC_SUBDEV_S_FMT: {
>>>>    		struct v4l2_subdev_format *format = arg;
>>>>    
>>>> +		if (!(format->format.flags & V4L2_MBUS_FRAMEFMT_HAS_CSC)) {
>>>> +			format->format.colorspace = V4L2_COLORSPACE_DEFAULT;
>>>> +			format->format.xfer_func = V4L2_XFER_FUNC_DEFAULT;
>>>> +			format->format.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
>>>> +			format->format.quantization = V4L2_QUANTIZATION_DEFAULT;
>>>> +		}
I wonder if those 3 code chunks added to v4l2-ioctl.c and v4l2-subdev.c are actually
needed. They set the colorspace fields on capture devices to 0 if the HAS_CSC flag is not set.
But I don't see the reason to do it, if the capture driver do not support CSC it will just ignore
the values of those fields that came from userspace which is what is already done.

Also, it could be that a driver does not support CSC and userspace set the SET_CSC flag anyway, in this
case those fields will not be set to defalut although they should.
What do you think?

Thanks,
Dafna

>>>> +
>>>>    		memset(format->reserved, 0, sizeof(format->reserved));
>>>>    		memset(format->format.reserved, 0, sizeof(format->format.reserved));
>>>>    		return v4l2_subdev_call(sd, pad, set_fmt, subdev_fh->pad, format);
>>>> diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
>>>> index 123a231001a8..89ff0ad6a631 100644
>>>> --- a/include/uapi/linux/v4l2-mediabus.h
>>>> +++ b/include/uapi/linux/v4l2-mediabus.h
>>>> @@ -16,6 +16,8 @@
>>>>    #include <linux/types.h>
>>>>    #include <linux/videodev2.h>
>>>>    
>>>> +#define V4L2_MBUS_FRAMEFMT_HAS_CSC	0x0001
>>>> +
>>>>    /**
>>>>     * struct v4l2_mbus_framefmt - frame format on the media bus
>>>>     * @width:	image width
>>>> @@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
>>>>    	__u16			ycbcr_enc;
>>>>    	__u16			quantization;
>>>>    	__u16			xfer_func;
>>>> -	__u16			reserved[11];
>>>> +	__u16			flags;
>>>> +	__u16			reserved[10];
>>>>    };
>>>>    
>>>>    #ifndef __KERNEL__
>>>> diff --git a/include/uapi/linux/v4l2-subdev.h b/include/uapi/linux/v4l2-subdev.h
>>>> index 03970ce30741..4410b26a7158 100644
>>>> --- a/include/uapi/linux/v4l2-subdev.h
>>>> +++ b/include/uapi/linux/v4l2-subdev.h
>>>> @@ -65,6 +65,8 @@ struct v4l2_subdev_crop {
>>>>    	__u32 reserved[8];
>>>>    };
>>>>    
>>>> +#define V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC	0x00000001
>>>
>>> I think it is better to add an HSV_ENC alias here as well.
>>>
>>> It's for readability only, since talking about YCBCR_ENC when the mediabus format
>>> is a HSV format is just weird.
>>
>> I see that in 'v4l2_pix_format' the {ycbcr_enc, hsv_enc} are a union
>> but in 'v4l2_mbus_framefmt' there is only the field ycbcr_enc.
>> I wonder why is that, since I see there is one HSV media bus format
>> V4L2_MBUS_FROM_MEDIA_BUS_FMT(AHSV8888_1X32).
>>
>> So I guess this is why I didn't add a V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC define.
>> I also didn't add this flag to the docs. Should I?
> 
> I think this can be done in a separate (final) patch where a union is added for
> v4l2_mbus_framefmt together with a V4L2_SUBDEV_MBUS_CODE_CSC_HSV_ENC define.
> 
> These are effectively aliases to make code that works with HSV easier to read,
> so they do not change functionality.
> 
> Regards,
> 
> 	Hans
> 
>>
>> Thanks,
>> Dafna
>>
>>>
>>>> +#define V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION	0x00000002
>>>>    /**
>>>>     * struct v4l2_subdev_mbus_code_enum - Media bus format enumeration
>>>>     * @pad: pad number, as reported by the media API
>>>> @@ -77,7 +79,8 @@ struct v4l2_subdev_mbus_code_enum {
>>>>    	__u32 index;
>>>>    	__u32 code;
>>>>    	__u32 which;
>>>> -	__u32 reserved[8];
>>>> +	__u32 flags;
>>>> +	__u32 reserved[7];
>>>>    };
>>>>    
>>>>    /**
>>>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
>>>> index 9817b7e2c968..adc9dd1080b8 100644
>>>> --- a/include/uapi/linux/videodev2.h
>>>> +++ b/include/uapi/linux/videodev2.h
>>>> @@ -772,6 +772,7 @@ struct v4l2_pix_format {
>>>>    
>>>>    /* Flags */
>>>>    #define V4L2_PIX_FMT_FLAG_PREMUL_ALPHA	0x00000001
>>>> +#define V4L2_PIX_FMT_FLAG_HAS_CSC	0x00000002
>>>>    
>>>>    /*
>>>>     *	F O R M A T   E N U M E R A T I O N
>>>> @@ -789,6 +790,9 @@ struct v4l2_fmtdesc {
>>>>    #define V4L2_FMT_FLAG_EMULATED			0x0002
>>>>    #define V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM	0x0004
>>>>    #define V4L2_FMT_FLAG_DYN_RESOLUTION		0x0008
>>>> +#define V4L2_FMT_FLAG_CSC_YCBCR_ENC		0x0010
>>>> +#define V4L2_FMT_FLAG_CSC_HSV_ENC		0x0010
>>>> +#define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0020
>>>>    
>>>>    	/* Frame Size and frame rate enumeration */
>>>>    /*
>>>>
>>>
>>> I think this is quite good, it's mainly doc improvements and renaming HAS_CSC to REQUEST_CSC.
>>>
>>> That said, I do want to see this supported in at least vivid (vimc would be nice
>>> too!). And v4l2-ctl needs a patch to support this.
>>>
>>> A compliance test for v4l2-compliance would be nice too, but it is not a prerequisite.
>>> I'm not entirely sure what would be the best way to test this. Perhaps a vivid-specific
>>> test might be easiest (i.e., don't test it for all drivers, but just for vivid).
>>>
>>> Regards,
>>>
>>> 	Hans
>>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
