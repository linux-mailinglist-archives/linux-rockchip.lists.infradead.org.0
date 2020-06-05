Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F791EFECD
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jun 2020 19:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sz8/gonvXAUkyEvfkkuzyq9YyRIl24ZRkUeQb4uo1xE=; b=QNC+10IGfJ6uc1oiA8DccsY75n
	ptWawCH9ZUvdUfxK9ZaAlt6AoJ4T317nS8G8RfnpVFQQGVjK58dvLTjwyWx9TKfHqTMu63B+2SuXb
	gSO7anFGTBVwUDpBq5x2vjBsUCkFGYtyG/FCMdZWkfgx31WpOVQWRVHKcvKrx+FwPum16mUsIEIOI
	gH5RNhQtjwOUDKzc3O89FZAEjeXbijgKtr5V5yc3b0rmz7jmOVH0n0JUtAt6586H9SOfZN4r909+l
	B4VCykdICdOetAu2yVlzyh6BhofvCYO6XBaoGbIG+AVPfxS8UI0rRZfzWpuf3Kxf8vMrZsfMcruKh
	6Pb2xXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhG7o-0001lV-Au; Fri, 05 Jun 2020 17:27:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhG7L-0001Jk-NE
 for linux-rockchip@lists.infradead.org; Fri, 05 Jun 2020 17:26:59 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0030b619f331cc239b.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:30b6:19f3:31cc:239b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6ECF52A5080;
 Fri,  5 Jun 2020 18:26:53 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [RFC v4 4/8] v4l2: add support for colorspace conversion API (CSC)
 for video capture and subdevices
Date: Fri,  5 Jun 2020 19:26:21 +0200
Message-Id: <20200605172625.19777-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_102656_057669_5E68CDE9 
X-CRM114-Status: GOOD (  23.48  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 Hans Verkuil <hans.verkuil@cisco.com>, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

For video capture it is the driver that reports the colorspace,
Y'CbCr/HSV encoding, quantization range and transfer function
used by the video, and there is no way to request something
different, even though many HDTV receivers have some sort of
colorspace conversion capabilities.

For output video this feature already exists since the application
specifies this information for the video format it will send out, and
the transmitter will enable any available CSC if a format conversion has
to be performed in order to match the capabilities of the sink.

For video capture we propose adding new v4l2_pix_format flag:
V4L2_PIX_FMT_FLAG_SET_CSC. The flag is set by the application,
the driver will interpret the ycbcr_enc/hsv_enc, and quantization fields
as the requested colorspace information and will attempt to
do the conversion it supports.

Drivers set the flags
V4L2_FMT_FLAG_CSC_YCBCR_ENC,
V4L2_FMT_FLAG_CSC_HSV_ENC,
V4L2_FMT_FLAG_CSC_QUANTIZATION,
in the flags field of the struct v4l2_fmtdesc during enumeration to
indicate that they support colorspace conversion for the respective field.
Currently the conversion of the fields 'colorspace' and 'xfer_func' is not
supported since there are no drivers that support it.

The same API is added for the subdevices. With the flag
V4L2_MBUS_FRAMEFMT_SET_CSC set by the application in VIDIOC_SUBDEV_S_FMT
ioctl and the flags V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC,
V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION set by the driver in the
VIDIOC_SUBDEV_ENUM_MBUS_CODE ioctl.

For subdevices, new 'flags' fields were added to the structs
v4l2_subdev_mbus_code_enum, v4l2_mbus_framefmt which are borrowed from the
'reserved' field

Drivers do not have to actually look at the flagsr. If the flags are not
set, then the colorspace, ycbcr_enc and quantization fields are set to
the default values by the core, i.e. just pass on the received format
without conversion.

Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../media/v4l/pixfmt-v4l2-mplane.rst          | 16 ++----
 .../userspace-api/media/v4l/pixfmt-v4l2.rst   | 46 ++++++++++++++--
 .../media/v4l/subdev-formats.rst              | 52 +++++++++++++++++--
 .../media/v4l/vidioc-enum-fmt.rst             | 22 +++++++-
 .../v4l/vidioc-subdev-enum-mbus-code.rst      | 28 ++++++++++
 .../media/videodev2.h.rst.exceptions          |  3 ++
 include/uapi/linux/v4l2-mediabus.h            |  5 +-
 include/uapi/linux/v4l2-subdev.h              |  5 +-
 include/uapi/linux/videodev2.h                |  4 ++
 9 files changed, 160 insertions(+), 21 deletions(-)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
index 444b4082684c..66f3365d7b72 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2-mplane.rst
@@ -105,29 +105,21 @@ describing all planes of that format.
     * - __u8
       - ``ycbcr_enc``
       - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
-        This information supplements the ``colorspace`` and must be set by
-	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	See struct :c:type:`v4l2_pix_format`.
     * - __u8
       - ``hsv_enc``
       - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
-        This information supplements the ``colorspace`` and must be set by
-	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	See struct :c:type:`v4l2_pix_format`.
     * - }
       -
     * - __u8
       - ``quantization``
       - Quantization range, from enum :c:type:`v4l2_quantization`.
-        This information supplements the ``colorspace`` and must be set by
-	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	See struct :c:type:`v4l2_pix_format`.
     * - __u8
       - ``xfer_func``
       - Transfer function, from enum :c:type:`v4l2_xfer_func`.
-        This information supplements the ``colorspace`` and must be set by
-	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	See struct :c:type:`v4l2_pix_format`.
     * - __u8
       - ``reserved[7]``
       - Reserved for future extensions. Should be zeroed by drivers and
diff --git a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
index ffa539592822..f23404efd90f 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-v4l2.rst
@@ -148,13 +148,29 @@ Single-planar format structure
       - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
         This information supplements the ``colorspace`` and must be set by
 	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	streams, see :ref:`colorspaces`. If the application sets the
+	flag ``V4L2_PIX_FMT_FLAG_SET_CSC`` then the application can set
+	this field for a capture stream to request a specific Y'CbCr encoding
+	for the captured image data. If the driver cannot handle requested
+	conversion, it will return another supported encoding.
+	This field is ignored for HSV pixelformats. The driver indicates that
+	ycbcr_enc conversion is supported by setting the flag
+	V4L2_FMT_FLAG_CSC_YCBCR_ENC in the corresponding struct
+	:c:type:`v4l2_fmtdesc` during enumeration. See :ref:`fmtdesc-flags`
     * - __u32
       - ``hsv_enc``
       - HSV encoding, from enum :c:type:`v4l2_hsv_encoding`.
         This information supplements the ``colorspace`` and must be set by
 	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	streams, see :ref:`colorspaces`. If the application sets the flag
+	``V4L2_PIX_FMT_FLAG_SET_CSC`` then the application can set this
+	field for a capture stream to request a specific HSV encoding for the
+	captured image data. If the driver cannot handle requested
+	conversion, it will return another supported encoding.
+	This field is ignored for non-HSV pixelformats. The driver indicates
+	that hsv_enc conversion is supported by setting the flag
+	V4L2_FMT_FLAG_CSC_HSV_ENC in the corresponding struct
+	:c:type:`v4l2_fmtdesc` during enumeration. See :ref:`fmtdesc-flags`
     * - }
       -
     * - __u32
@@ -162,7 +178,14 @@ Single-planar format structure
       - Quantization range, from enum :c:type:`v4l2_quantization`.
         This information supplements the ``colorspace`` and must be set by
 	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	streams, see :ref:`colorspaces`. If the application sets the flag
+	``V4L2_PIX_FMT_FLAG_SET_CSC`` then the application can set
+	this field for a capture stream to request a specific quantization
+	range for the captured image data. If the driver cannot handle requested
+	conversion, it will return another supported encoding.
+	The driver indicates that quantization conversion is supported by setting
+	the flag V4L2_FMT_FLAG_CSC_QUANTIZATION in the corresponding struct
+	:c:type:`v4l2_fmtdesc` during enumeration. See :ref:`fmtdesc-flags`
     * - __u32
       - ``xfer_func``
       - Transfer function, from enum :c:type:`v4l2_xfer_func`.
@@ -186,3 +209,20 @@ Single-planar format structure
 	by RGBA values (128, 192, 255, 128), the same pixel described with
 	premultiplied colors would be described by RGBA values (64, 96,
 	128, 128)
+    * .. _`v4l2-pix-fmt-flag-set-csc`:
+
+      - ``V4L2_PIX_FMT_FLAG_SET_CSC``
+      - 0x00000002
+      - Set by the application. It is only used for capture and is
+        ignored for output streams. If set, then request the device to do
+	colorspace conversion from the received colorspace to the requested
+	colorspace values. If colorimetry field (``ycncr_enc``, ``hsv_enc``
+	or ``quantization``) is set to 0, then that colorimetry setting will
+	remain unchanged from what was received. So to change the quantization
+	only the ``quantization`` field shall be set to non-zero values
+	(``V4L2_QUANTIZATION_FULL_RANGE`` or ``V4L2_QUANTIZATION_LIM_RANGE``)
+	and all other colorimetry fields shall be set to 0. The API does not
+	support the conversion of the fields ``colorspace`` and ``xfer_func``
+
+	To check which conversions are supported by the hardware for the current
+	pixel format, see :ref:`fmtdesc-flags`.
diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
index 9a4d61b0d76f..75eb7f8bb4c5 100644
--- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
+++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
@@ -49,13 +49,32 @@ Media Bus Formats
       - Y'CbCr encoding, from enum :c:type:`v4l2_ycbcr_encoding`.
         This information supplements the ``colorspace`` and must be set by
 	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	streams, see :ref:`colorspaces`. If the application sets the
+	flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
+	this field for a capture stream to request a specific Y'CbCr encoding
+	for the media bus data. If the driver cannot handle requested
+	conversion, it will return another supported encoding.
+	This field is ignored for HSV media bus formats. The driver indicates
+	that ycbcr_enc conversion is supported by setting the flag
+	V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC in the corresponding struct
+	:c:type:`v4l2_subdev_mbus_code_enum` during enumeration.
+	See :ref:`v4l2-subdev-mbus-code-flags`
+
     * - __u16
       - ``quantization``
       - Quantization range, from enum :c:type:`v4l2_quantization`.
         This information supplements the ``colorspace`` and must be set by
 	the driver for capture streams and by the application for output
-	streams, see :ref:`colorspaces`.
+	streams, see :ref:`colorspaces`. If the application sets the
+	flag ``V4L2_MBUS_FRAMEFMT_SET_CSC`` then the application can set
+	this field for a capture stream to request a specific quantization
+	encoding for the media bus data. If the driver cannot handle requested
+	conversion, it will return another supported encoding.
+	The driver indicates that quantization conversion is supported by
+	setting the flag V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION in the
+	corresponding struct :c:type:`v4l2_subdev_mbus_code_enum`
+	during enumeration. See :ref:`v4l2-subdev-mbus-code-flags`
+
     * - __u16
       - ``xfer_func``
       - Transfer function, from enum :c:type:`v4l2_xfer_func`.
@@ -63,10 +82,37 @@ Media Bus Formats
 	the driver for capture streams and by the application for output
 	streams, see :ref:`colorspaces`.
     * - __u16
-      - ``reserved``\ [11]
+      - ``flags``
+      - flags See:  :ref:v4l2-mbus-framefmt-flags
+    * - __u16
+      - ``reserved``\ [10]
       - Reserved for future extensions. Applications and drivers must set
 	the array to zero.
 
+.. _v4l2-mbus-framefmt-flags:
+
+.. flat-table:: v4l2_mbus_framefmt Flags
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       3 1 4
+
+    * .. _`mbus-framefmt-set-csc`:
+
+      - ``V4L2_MBUS_FRAMEFMT_SET_CSC``
+      - 0x0001
+      - Set by the application. It is only used for capture and is
+	ignored for output streams. If set, then request the subdevice to do
+	colorspace conversion from the received colorspace to the requested
+	colorspace values. If colorimetry field (``ycbcr_enc`` or
+	``quantization``) is set to 0, then that colorimetry setting will remain
+	unchanged from what was received. So to change the quantization, only the
+	``quantization`` field shall be set to non-zero values
+	(``V4L2_QUANTIZATION_FULL_RANGE`` or ``V4L2_QUANTIZATION_LIM_RANGE``)
+	and all other colorimetry fields shall be set to 0. The API does not
+	support the conversion of the fields ``colorspace`` and ``xfer_func``.
+
+	To check which conversions are supported by the hardware for the current
+	media bus frame format, see :ref:`v4l2-mbus-framefmt-flags`.
 
 
 .. _v4l2-mbus-pixelcode:
diff --git a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
index a53dd3d7f7e2..11323755d41b 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-enum-fmt.rst
@@ -178,7 +178,27 @@ the ``mbus_code`` field is handled differently:
 	parameters are detected. This flag can only be used in combination
 	with the ``V4L2_FMT_FLAG_COMPRESSED`` flag, since this applies to
 	compressed formats only. It is also only applies to stateful codecs.
-
+    * - ``V4L2_FMT_FLAG_CSC_YCBCR_ENC``
+      - 0x0010
+      - The driver allows the application to try to change the default
+	Y'CbCr encoding. This flag is relevant only for capture devices.
+	The application can ask to configure the ycbcr_enc of the capture device
+	when calling the :ref:`VIDIOC_S_FMT <VIDIOC_G_FMT>` ioctl with
+	:ref:`V4L2_PIX_FMT_FLAG_SET_CSC <v4l2-pix-fmt-flag-set-csc>` set.
+    * - ``V4L2_FMT_FLAG_CSC_HSV_ENC``
+      - 0x0010
+      - The driver allows the application to try to change the default
+	HSV encoding. This flag is relevant only for capture devices.
+	The application can ask to configure the hsv_enc of the capture device
+	when calling the :ref:`VIDIOC_S_FMT <VIDIOC_G_FMT>` ioctl with
+	:ref:`V4L2_PIX_FMT_FLAG_SET_CSC <v4l2-pix-fmt-flag-set-csc>` set.
+    * - ``V4L2_FMT_FLAG_CSC_QUANTIZATION``
+      - 0x0020
+      - The driver allows the application to try to change the default
+	quantization. This flag is relevant only for capture devices.
+	The application can ask to configure the quantization of the capture
+	device when calling the :ref:`VIDIOC_S_FMT <VIDIOC_G_FMT>` ioctl with
+	:ref:`V4L2_PIX_FMT_FLAG_SET_CSC <v4l2-pix-fmt-flag-set-csc>` set.
 
 Return Value
 ============
diff --git a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
index 35b8607203a4..3d3430bdd71f 100644
--- a/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
+++ b/Documentation/userspace-api/media/v4l/vidioc-subdev-enum-mbus-code.rst
@@ -78,12 +78,40 @@ information about the try formats.
       - ``which``
       - Media bus format codes to be enumerated, from enum
 	:ref:`v4l2_subdev_format_whence <v4l2-subdev-format-whence>`.
+    * - __u32
+      - ``flags``
+      - See :ref:`v4l2-subdev-mbus-code-flags`
     * - __u32
       - ``reserved``\ [8]
       - Reserved for future extensions. Applications and drivers must set
 	the array to zero.
 
 
+
+.. tabularcolumns:: |p{4.4cm}|p{4.4cm}|p{7.7cm}|
+
+.. _v4l2-subdev-mbus-code-flags:
+
+.. flat-table:: Subdev Media Bus Code Enumerate Flags
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC
+      - 0x00000001
+      - The driver allows the application to try to change the default Y'CbCr
+	encoding. The application can ask to configure the ycbcr_enc of the
+	subdevice when calling the :ref:`VIDIOC_SUBDEV_S_FMT <VIDIOC_SUBDEV_G_FMT>`
+	ioctl with :ref:`V4L2_MBUS_FRAMEFMT_SET_CSC <mbus-framefmt-set-csc>` set.
+	See :ref:`v4l2-mbus-format` on how to do this.
+    * - V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION
+      - 0x00000002
+      - The driver allows the application to try to change the default
+	quantization. The application can ask to configure the quantization of
+	the subdevice when calling the :ref:`VIDIOC_SUBDEV_S_FMT <VIDIOC_SUBDEV_G_FMT>`
+	ioctl with :ref:`V4L2_MBUS_FRAMEFMT_SET_CSC <mbus-framefmt-set-csc>` set.
+	See :ref:`v4l2-mbus-format` on how to do this.
+
 Return Value
 ============
 
diff --git a/Documentation/userspace-api/media/videodev2.h.rst.exceptions b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
index 564a3bf5bc6d..f7be008cd479 100644
--- a/Documentation/userspace-api/media/videodev2.h.rst.exceptions
+++ b/Documentation/userspace-api/media/videodev2.h.rst.exceptions
@@ -187,6 +187,9 @@ replace define V4L2_FMT_FLAG_COMPRESSED fmtdesc-flags
 replace define V4L2_FMT_FLAG_EMULATED fmtdesc-flags
 replace define V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM fmtdesc-flags
 replace define V4L2_FMT_FLAG_DYN_RESOLUTION fmtdesc-flags
+replace define V4L2_FMT_FLAG_CSC_YCBCR_ENC fmtdesc-flags
+replace define V4L2_FMT_FLAG_CSC_HSV_ENC fmtdesc-flags
+replace define V4L2_FMT_FLAG_CSC_QUANTIZATION fmtdesc-flags
 
 # V4L2 timecode types
 replace define V4L2_TC_TYPE_24FPS timecode-type
diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
index 123a231001a8..0f916278137a 100644
--- a/include/uapi/linux/v4l2-mediabus.h
+++ b/include/uapi/linux/v4l2-mediabus.h
@@ -16,6 +16,8 @@
 #include <linux/types.h>
 #include <linux/videodev2.h>
 
+#define V4L2_MBUS_FRAMEFMT_SET_CSC	0x0001
+
 /**
  * struct v4l2_mbus_framefmt - frame format on the media bus
  * @width:	image width
@@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
 	__u16			ycbcr_enc;
 	__u16			quantization;
 	__u16			xfer_func;
-	__u16			reserved[11];
+	__u16			flags;
+	__u16			reserved[10];
 };
 
 #ifndef __KERNEL__
diff --git a/include/uapi/linux/v4l2-subdev.h b/include/uapi/linux/v4l2-subdev.h
index 5d2a1dab7911..972e64d8b54e 100644
--- a/include/uapi/linux/v4l2-subdev.h
+++ b/include/uapi/linux/v4l2-subdev.h
@@ -65,6 +65,8 @@ struct v4l2_subdev_crop {
 	__u32 reserved[8];
 };
 
+#define V4L2_SUBDEV_MBUS_CODE_CSC_YCBCR_ENC	0x00000001
+#define V4L2_SUBDEV_MBUS_CODE_CSC_QUANTIZATION	0x00000002
 /**
  * struct v4l2_subdev_mbus_code_enum - Media bus format enumeration
  * @pad: pad number, as reported by the media API
@@ -77,7 +79,8 @@ struct v4l2_subdev_mbus_code_enum {
 	__u32 index;
 	__u32 code;
 	__u32 which;
-	__u32 reserved[8];
+	__u32 flags;
+	__u32 reserved[7];
 };
 
 /**
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index c3a1cf1c507f..15824316e0ca 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -774,6 +774,7 @@ struct v4l2_pix_format {
 
 /* Flags */
 #define V4L2_PIX_FMT_FLAG_PREMUL_ALPHA	0x00000001
+#define V4L2_PIX_FMT_FLAG_SET_CSC	0x00000002
 
 /*
  *	F O R M A T   E N U M E R A T I O N
@@ -792,6 +793,9 @@ struct v4l2_fmtdesc {
 #define V4L2_FMT_FLAG_EMULATED			0x0002
 #define V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM	0x0004
 #define V4L2_FMT_FLAG_DYN_RESOLUTION		0x0008
+#define V4L2_FMT_FLAG_CSC_YCBCR_ENC		0x0010
+#define V4L2_FMT_FLAG_CSC_HSV_ENC		0x0010
+#define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0020
 
 	/* Frame Size and frame rate enumeration */
 /*
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
