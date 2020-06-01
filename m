Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C271E9EA9
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 08:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2g6jwfRQAwa5xkQUSSmN1OxhD6qwAIBZD/jKovbOEg=; b=PdIXuW4z4KWsr0
	YHEIBr6KnTCGB+ScUpX9IqniZlgETjwbFU0qMAvf3N3i5R9eXQzjArh8Var3e9DGw1Fxrfz3bgYj5
	MuoGJ9uHedNU0ddCdefO7Flsu2rOWk2Gi4d53g5nOkMC2QWLPkL+DoNGLgfRr6n5YsJh5mMhiBJIn
	NKOdSa3w++N6BS5TUu64GECdiB7nLEJges/+lAG4R1jWZVhF4C1+qh9i7yq7DN4QYeSmWA5OhszyV
	vLNbEbWG1LDkltxk4Wtqn6RAeCJUllH1XCU+VdqY4F2o9mPU0/IeYKKgAeVt9bc1fy4TeknFGhoOZ
	2m4JsiluLkE/klmm1z2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfePo-0007hW-Fa; Mon, 01 Jun 2020 06:59:20 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfePa-0007aD-EV; Mon, 01 Jun 2020 06:59:11 +0000
Received: from bootlin.com (lfbn-tou-1-695-67.w86-250.abo.wanadoo.fr
 [86.250.147.67])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 0B3F4240006;
 Mon,  1 Jun 2020 06:58:57 +0000 (UTC)
Date: Mon, 1 Jun 2020 08:58:56 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH 2/3] media: rockchip: Introduce driver for Rockhip's
 camera interface
Message-ID: <20200601085856.38ddd23c@bootlin.com>
In-Reply-To: <1a903b30-f3dc-c7e7-1652-96570fcc91f8@xs4all.nl>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
 <20200403142122.297283-3-maxime.chevallier@bootlin.com>
 <1a903b30-f3dc-c7e7-1652-96570fcc91f8@xs4all.nl>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_235906_905714_54635D46 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.70.178.230 listed in bl.mailspike.net]
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: crop.top (top)]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Hans,

On Thu, 16 Apr 2020 11:35:41 +0200
Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:

I'm very sorry I missed a lot of your reviews in my V2, that wasn't on
purpose. I'll fix this on the next iteration, sorry about that.

Thank you very much for your review !

Maxime

>+Helen Koike (rkisp1 maintainer)
>
>A quick review below...
>
>On 03/04/2020 16:21, Maxime Chevallier wrote:
>> Introduce a driver for the camera interface on some Rockchip platforms.
>> 
>> This controller supports CSI2, Parallel and BT656 interfaces, but for
>> now only the parallel interface could be tested, hence it's the only one
>> that's supported in the first version of this driver.
>> 
>> This controller can be fond on PX30, RK1808, RK3128, RK3288 and RK3288,  
>
>fond -> found
>
>'RK3288 and RK3288'? Typo?
>
>> but for now it's only be tested on PX30.
>> 
>> Most of this driver was written follwing the BSP driver from rockchip,  
>
>follwing -> following
>
>> removing the parts that either didn't fit correctly the guidelines, or
>> that couldn't be tested.
>> 
>> This basic version doesn't support cropping nor scaling, and is only
>> designed with one sensor being attached to it a any time.  
>
>a any -> at any
>
>Make sure you test with v4l2-compliance, in fact, I need to see the output
>of 'v4l2-compliance -s' when you post v2. There shouldn't be any warnings
>or fails. Make sure you build v4l2-compliance from the git repo
>(https://git.linuxtv.org//v4l-utils.git) directly, that ensures that you
>use the latest and greatest version.
>
>How does this driver compare to drivers/staging/media/rkisp1? Is the ISP
>hardware completely different (it probably is, just checking)?
>
>How complex is the ISP hardware? This driver is a regular video driver,
>but should it move to a media controller based driver instead, like rkisp1?
>
>I don't know the hardware, so I can't tell.
>
>> 
>> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
>> ---
>>  drivers/media/platform/Kconfig                |   13 +
>>  drivers/media/platform/Makefile               |    1 +
>>  drivers/media/platform/rockchip/cif/Makefile  |    3 +
>>  drivers/media/platform/rockchip/cif/capture.c | 1170 +++++++++++++++++
>>  drivers/media/platform/rockchip/cif/dev.c     |  407 ++++++
>>  drivers/media/platform/rockchip/cif/dev.h     |  208 +++
>>  drivers/media/platform/rockchip/cif/regs.h    |  256 ++++
>>  7 files changed, 2058 insertions(+)
>>  create mode 100644 drivers/media/platform/rockchip/cif/Makefile
>>  create mode 100644 drivers/media/platform/rockchip/cif/capture.c
>>  create mode 100644 drivers/media/platform/rockchip/cif/dev.c
>>  create mode 100644 drivers/media/platform/rockchip/cif/dev.h
>>  create mode 100644 drivers/media/platform/rockchip/cif/regs.h
>> 
>> diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
>> index f65e98d3adf2..d2f413a99886 100644
>> --- a/drivers/media/platform/Kconfig
>> +++ b/drivers/media/platform/Kconfig
>> @@ -460,6 +460,19 @@ config VIDEO_ROCKCHIP_RGA
>>  
>>  	  To compile this driver as a module choose m here.
>>  
>> +config VIDEO_ROCKCHIP_CIF
>> +	tristate "Rockchip Camera Interface"
>> +	depends on VIDEO_DEV && VIDEO_V4L2
>> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
>> +	select VIDEOBUF2_DMA_SG
>> +	select VIDEOBUF2_DMA_CONTIG
>> +	select V4L2_FWNODE
>> +	select V4L2_MEM2MEM_DEV
>> +	help
>> +	  This is a v4l2 driver for Rockchip SOC Camera interface.
>> +
>> +	  To compile this driver as a module choose m here.
>> +
>>  config VIDEO_TI_VPE
>>  	tristate "TI VPE (Video Processing Engine) driver"
>>  	depends on VIDEO_DEV && VIDEO_V4L2
>> diff --git a/drivers/media/platform/Makefile b/drivers/media/platform/Makefile
>> index d13db96e3015..67e7ac034be1 100644
>> --- a/drivers/media/platform/Makefile
>> +++ b/drivers/media/platform/Makefile
>> @@ -68,6 +68,7 @@ obj-$(CONFIG_VIDEO_RENESAS_JPU)		+= rcar_jpu.o
>>  obj-$(CONFIG_VIDEO_RENESAS_VSP1)	+= vsp1/
>>  
>>  obj-$(CONFIG_VIDEO_ROCKCHIP_RGA)	+= rockchip/rga/
>> +obj-$(CONFIG_VIDEO_ROCKCHIP_CIF)	+= rockchip/cif/
>>  
>>  obj-y	+= omap/
>>  
>> diff --git a/drivers/media/platform/rockchip/cif/Makefile b/drivers/media/platform/rockchip/cif/Makefile
>> new file mode 100644
>> index 000000000000..727990824316
>> --- /dev/null
>> +++ b/drivers/media/platform/rockchip/cif/Makefile
>> @@ -0,0 +1,3 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +obj-$(CONFIG_VIDEO_ROCKCHIP_CIF) += video_rkcif.o
>> +video_rkcif-objs += dev.o capture.o
>> diff --git a/drivers/media/platform/rockchip/cif/capture.c b/drivers/media/platform/rockchip/cif/capture.c
>> new file mode 100644
>> index 000000000000..9df7757c6ed9
>> --- /dev/null
>> +++ b/drivers/media/platform/rockchip/cif/capture.c
>> @@ -0,0 +1,1170 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Rockchip CIF Driver
>> + *
>> + * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
>> + * Copyright (C) 2020 Maxime Chevallier <maxime.chevallier@bootlin.com>
>> + */
>> +
>> +#include <linux/delay.h>
>> +#include <linux/pm_runtime.h>
>> +#include <linux/reset.h>
>> +#include <media/v4l2-common.h>
>> +#include <media/v4l2-event.h>
>> +#include <media/v4l2-fh.h>
>> +#include <media/v4l2-fwnode.h>
>> +#include <media/v4l2-ioctl.h>
>> +#include <media/v4l2-mc.h>
>> +#include <media/v4l2-subdev.h>
>> +#include <media/videobuf2-dma-contig.h>
>> +
>> +#include "dev.h"
>> +#include "regs.h"
>> +
>> +#define CIF_REQ_BUFS_MIN	1
>> +#define CIF_MIN_WIDTH		64
>> +#define CIF_MIN_HEIGHT		64
>> +#define CIF_MAX_WIDTH		8192
>> +#define CIF_MAX_HEIGHT		8192
>> +
>> +#define RKCIF_PLANE_Y			0
>> +#define RKCIF_PLANE_CBCR		1
>> +
>> +#define CIF_FETCH_Y_LAST_LINE(VAL) ((VAL) & 0x1fff)
>> +/* Check if swap y and c in bt1120 mode */
>> +#define CIF_FETCH_IS_Y_FIRST(VAL) ((VAL) & 0xf)
>> +
>> +/* Get xsubs and ysubs for fourcc formats
>> + *
>> + * @xsubs: horizontal color samples in a 4*4 matrix, for yuv
>> + * @ysubs: vertical color samples in a 4*4 matrix, for yuv
>> + */
>> +static int fcc_xysubs(u32 fcc, u32 *xsubs, u32 *ysubs)
>> +{
>> +	switch (fcc) {
>> +	case V4L2_PIX_FMT_NV16:
>> +	case V4L2_PIX_FMT_NV61:
>> +		*xsubs = 2;
>> +		*ysubs = 1;
>> +		break;
>> +	case V4L2_PIX_FMT_NV21:
>> +	case V4L2_PIX_FMT_NV12:
>> +		*xsubs = 2;
>> +		*ysubs = 2;
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct cif_output_fmt out_fmts[] = {
>> +	{
>> +		.fourcc = V4L2_PIX_FMT_NV16,
>> +		.cplanes = 2,
>> +		.mplanes = 1,
>> +		.fmt_val = YUV_OUTPUT_422 | UV_STORAGE_ORDER_UVUV,
>> +		.bpp = { 8, 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_NV61,
>> +		.fmt_val = YUV_OUTPUT_422 | UV_STORAGE_ORDER_VUVU,
>> +		.cplanes = 2,
>> +		.mplanes = 1,
>> +		.bpp = { 8, 16 },
>> +	},
>> +	{
>> +		.fourcc = V4L2_PIX_FMT_NV12,
>> +		.fmt_val = YUV_OUTPUT_420 | UV_STORAGE_ORDER_UVUV,
>> +		.cplanes = 2,
>> +		.mplanes = 1,
>> +		.bpp = { 8, 16 },
>> +		.mbus = MEDIA_BUS_FMT_UYVY8_2X8,
>> +	},
>> +	{
>> +		.fourcc = V4L2_PIX_FMT_NV21,
>> +		.fmt_val = YUV_OUTPUT_420 | UV_STORAGE_ORDER_VUVU,
>> +		.cplanes = 2,
>> +		.mplanes = 1,
>> +		.bpp = { 8, 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_RGB24,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 24 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_RGB565,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_BGR666,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 18 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SRGGB8,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 8 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGRBG8,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 8 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGBRG8,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 8 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SBGGR8,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 8 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SRGGB10,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGRBG10,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGBRG10,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SBGGR10,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SRGGB12,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGRBG12,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SGBRG12,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SBGGR12,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_SBGGR16,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}, {
>> +		.fourcc = V4L2_PIX_FMT_Y16,
>> +		.cplanes = 1,
>> +		.mplanes = 1,
>> +		.bpp = { 16 },
>> +	}
>> +};
>> +
>> +static const struct cif_input_fmt in_fmts[] = {
>> +	{
>> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_YUYV,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_YUYV,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_INTERLACED,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_YVYU8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_YVYU,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_YVYU8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_YVYU,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_INTERLACED,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_UYVY,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_UYVY,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_INTERLACED,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_VYUY,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8,
>> +		.dvp_fmt_val	= YUV_INPUT_422 | YUV_INPUT_ORDER_VYUY,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_YUV422,
>> +		.fmt_type	= CIF_FMT_TYPE_YUV,
>> +		.field		= V4L2_FIELD_INTERLACED,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_8,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW8,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_8,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW8,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_8,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW8,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_8,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW8,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_10,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW10,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_10,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW10,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_10,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW10,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_10,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW10,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_12,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW12,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_12,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW12,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_12,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW12,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_12,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW12,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_RGB888_1X24,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RGB888,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_Y8_1X8,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_8,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW8,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_Y10_1X10,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_10,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW10,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}, {
>> +		.mbus_code	= MEDIA_BUS_FMT_Y12_1X12,
>> +		.dvp_fmt_val	= INPUT_MODE_RAW | RAW_DATA_WIDTH_12,
>> +		.csi_fmt_val	= CSI_WRDDR_TYPE_RAW12,
>> +		.fmt_type	= CIF_FMT_TYPE_RAW,
>> +		.field		= V4L2_FIELD_NONE,
>> +	}
>> +};
>> +
>> +static const struct
>> +cif_input_fmt *get_input_fmt(struct v4l2_subdev *sd)  
>
>Don't put a linebreak after 'struct'. You can do this, though:
>
>static const struct cif_input_fmt *
>get_input_fmt(struct v4l2_subdev *sd)
>
>However, the whole prototype is just 72 chars long, so just keep it
>in one line.
>
>> +{
>> +	struct v4l2_subdev_format fmt;
>> +	int ret;
>> +	u32 i;
>> +
>> +	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
>> +	fmt.pad = 0;
>> +	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &fmt);
>> +	if (ret < 0) {
>> +		v4l2_warn(sd->v4l2_dev,
>> +			  "sensor fmt invalid, set to default size\n");
>> +		goto set_default;
>> +	}
>> +
>> +	for (i = 0; i < ARRAY_SIZE(in_fmts); i++)
>> +		if (fmt.format.code == in_fmts[i].mbus_code &&
>> +		    fmt.format.field == in_fmts[i].field)
>> +			return &in_fmts[i];
>> +
>> +	v4l2_err(sd->v4l2_dev, "remote sensor mbus code not supported\n");
>> +
>> +set_default:
>> +	return NULL;
>> +}
>> +
>> +	static const struct  
>
>Leading tab? I expect 'checkpatch.pl --strict' to catch that. Please run that
>before posting v2.
>
>> +cif_output_fmt *find_output_fmt(struct rkcif_stream *stream, u32 pixelfmt)
>> +{
>> +	const struct cif_output_fmt *fmt;
>> +	u32 i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(out_fmts); i++) {
>> +		fmt = &out_fmts[i];
>> +		if (fmt->fourcc == pixelfmt)
>> +			return fmt;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>> +/***************************** stream operations ******************************/
>> +static void rkcif_assign_new_buffer_oneframe(struct rkcif_stream *stream)
>> +{
>> +	struct rkcif_dummy_buffer *dummy_buf = &stream->dummy_buf;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +	void __iomem *base = dev->base_addr;
>> +
>> +	/* Set up an empty buffer for the next frame */
>> +	spin_lock(&stream->vbq_lock);
>> +	if (!list_empty(&stream->buf_head)) {
>> +		stream->curr_buf = list_first_entry(&stream->buf_head,
>> +					struct rkcif_buffer, queue);
>> +		list_del(&stream->curr_buf->queue);
>> +	} else {
>> +		stream->curr_buf = NULL;
>> +	}
>> +	spin_unlock(&stream->vbq_lock);
>> +
>> +	if (stream->curr_buf) {
>> +		write_cif_reg(base, CIF_FRM0_ADDR_Y,
>> +			      stream->curr_buf->buff_addr[RKCIF_PLANE_Y]);
>> +		write_cif_reg(base, CIF_FRM0_ADDR_UV,
>> +			      stream->curr_buf->buff_addr[RKCIF_PLANE_CBCR]);
>> +		write_cif_reg(base, CIF_FRM1_ADDR_Y,
>> +			      stream->curr_buf->buff_addr[RKCIF_PLANE_Y]);
>> +		write_cif_reg(base, CIF_FRM1_ADDR_UV,
>> +			      stream->curr_buf->buff_addr[RKCIF_PLANE_CBCR]);
>> +	} else {
>> +		write_cif_reg(base, CIF_FRM0_ADDR_Y, dummy_buf->dma_addr);
>> +		write_cif_reg(base, CIF_FRM0_ADDR_UV, dummy_buf->dma_addr);
>> +		write_cif_reg(base, CIF_FRM1_ADDR_Y, dummy_buf->dma_addr);
>> +		write_cif_reg(base, CIF_FRM1_ADDR_UV, dummy_buf->dma_addr);
>> +	}
>> +}
>> +
>> +static void rkcif_stream_stop(struct rkcif_stream *stream)
>> +{
>> +	struct rkcif_device *cif_dev = stream->cifdev;
>> +	void __iomem *base = cif_dev->base_addr;
>> +	u32 val;
>> +
>> +	val = read_cif_reg(base, CIF_CTRL);
>> +	write_cif_reg(base, CIF_CTRL, val & (~ENABLE_CAPTURE));
>> +	write_cif_reg(base, CIF_INTEN, 0x0);
>> +	write_cif_reg(base, CIF_INTSTAT, 0x3ff);
>> +	write_cif_reg(base, CIF_FRAME_STATUS, 0x0);
>> +
>> +	stream->state = RKCIF_STATE_READY;
>> +}
>> +
>> +static int rkcif_queue_setup(struct vb2_queue *queue,
>> +			     unsigned int *num_buffers,
>> +			     unsigned int *num_planes,
>> +			     unsigned int sizes[],
>> +			     struct device *alloc_devs[])
>> +{
>> +	struct rkcif_stream *stream = queue->drv_priv;
>> +	const struct v4l2_pix_format_mplane *pixm;
>> +	const struct cif_output_fmt *cif_fmt;
>> +	u32 i;
>> +
>> +	pixm = &stream->pixm;
>> +	cif_fmt = stream->cif_fmt_out;
>> +
>> +	if (*num_planes) {
>> +		if (*num_planes != cif_fmt->mplanes)
>> +			return -EINVAL;
>> +
>> +		for (i = 0; i < cif_fmt->mplanes; i++)
>> +			if (sizes[i] < pixm->plane_fmt[i].sizeimage)
>> +				return -EINVAL;
>> +		return 0;
>> +	}
>> +
>> +	*num_planes = cif_fmt->mplanes;
>> +
>> +	for (i = 0; i < cif_fmt->mplanes; i++) {
>> +		const struct v4l2_plane_pix_format *plane_fmt;
>> +
>> +		plane_fmt = &pixm->plane_fmt[i];
>> +		sizes[i] = plane_fmt->sizeimage;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * The vb2_buffer are stored in rkcif_buffer, in order to unify
>> + * mplane buffer and none-mplane buffer.
>> + */
>> +static void rkcif_buf_queue(struct vb2_buffer *vb)
>> +{
>> +	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
>> +	struct rkcif_buffer *cifbuf = to_rkcif_buffer(vbuf);
>> +	struct vb2_queue *queue = vb->vb2_queue;
>> +	struct rkcif_stream *stream = queue->drv_priv;
>> +	struct v4l2_pix_format_mplane *pixm = &stream->pixm;
>> +	const struct cif_output_fmt *fmt = stream->cif_fmt_out;
>> +	unsigned long lock_flags = 0;
>> +	int i;
>> +
>> +	memset(cifbuf->buff_addr, 0, sizeof(cifbuf->buff_addr));
>> +	/* If mplanes > 1, every c-plane has its own m-plane,
>> +	 * otherwise, multiple c-planes are in the same m-plane
>> +	 */
>> +	for (i = 0; i < fmt->mplanes; i++)
>> +		cifbuf->buff_addr[i] = vb2_dma_contig_plane_dma_addr(vb, i);
>> +
>> +	if (fmt->mplanes == 1) {
>> +		for (i = 0; i < fmt->cplanes - 1; i++)
>> +			cifbuf->buff_addr[i + 1] = cifbuf->buff_addr[i] +
>> +				pixm->plane_fmt[i].bytesperline * pixm->height;
>> +	}
>> +
>> +	spin_lock_irqsave(&stream->vbq_lock, lock_flags);
>> +	list_add_tail(&cifbuf->queue, &stream->buf_head);
>> +	spin_unlock_irqrestore(&stream->vbq_lock, lock_flags);
>> +}
>> +
>> +static int rkcif_create_dummy_buf(struct rkcif_stream *stream)
>> +{  
>
>Why do you need a dummy buffer? That's very unusual, so at the very least
>this needs comments.
>
>> +	struct rkcif_dummy_buffer *dummy_buf = &stream->dummy_buf;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +
>> +	/* get a maximum plane size */
>> +	dummy_buf->size = max3(stream->pixm.plane_fmt[0].bytesperline *
>> +		stream->pixm.height,
>> +		stream->pixm.plane_fmt[1].sizeimage,
>> +		stream->pixm.plane_fmt[2].sizeimage);
>> +
>> +	dummy_buf->vaddr = dma_alloc_coherent(dev->dev, dummy_buf->size,
>> +					      &dummy_buf->dma_addr,
>> +					      GFP_KERNEL);
>> +	if (!dummy_buf->vaddr) {
>> +		v4l2_err(&dev->v4l2_dev,
>> +			 "Failed to allocate the memory for dummy buffer\n");
>> +		return -ENOMEM;
>> +	}
>> +
>> +	v4l2_info(&dev->v4l2_dev, "Allocate dummy buffer, size: 0x%08x\n",
>> +		  dummy_buf->size);
>> +
>> +	return 0;
>> +}
>> +
>> +static void rkcif_destroy_dummy_buf(struct rkcif_stream *stream)
>> +{
>> +	struct rkcif_dummy_buffer *dummy_buf = &stream->dummy_buf;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +
>> +	dma_free_coherent(dev->dev, dummy_buf->size,
>> +			  dummy_buf->vaddr, dummy_buf->dma_addr);
>> +}
>> +
>> +static void rkcif_stop_streaming(struct vb2_queue *queue)
>> +{
>> +	struct rkcif_stream *stream = queue->drv_priv;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +	struct rkcif_buffer *buf;
>> +	struct v4l2_subdev *sd;
>> +	int ret;
>> +
>> +	stream->stopping = true;
>> +	ret = wait_event_timeout(stream->wq_stopped,
>> +				 stream->state != RKCIF_STATE_STREAMING,
>> +				 msecs_to_jiffies(1000));
>> +	if (!ret) {
>> +		rkcif_stream_stop(stream);
>> +		stream->stopping = false;
>> +	}
>> +	pm_runtime_put(dev->dev);
>> +
>> +	/* stop the sub device*/
>> +	sd = dev->sensor.sd;
>> +	v4l2_subdev_call(sd, video, s_stream, 0);
>> +	v4l2_subdev_call(sd, core, s_power, 0);
>> +
>> +	/* release buffers */
>> +	if (stream->curr_buf) {
>> +		list_add_tail(&stream->curr_buf->queue, &stream->buf_head);
>> +		stream->curr_buf = NULL;
>> +	}
>> +	if (stream->next_buf) {
>> +		list_add_tail(&stream->next_buf->queue, &stream->buf_head);
>> +		stream->next_buf = NULL;
>> +	}
>> +
>> +	while (!list_empty(&stream->buf_head)) {
>> +		buf = list_first_entry(&stream->buf_head,
>> +				       struct rkcif_buffer, queue);
>> +		list_del(&buf->queue);
>> +		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>> +	}
>> +
>> +	rkcif_destroy_dummy_buf(stream);
>> +}
>> +
>> +static u32 rkcif_determine_input_mode(struct rkcif_device *dev)
>> +{
>> +	struct rkcif_sensor_info *sensor_info = &dev->sensor;
>> +	struct rkcif_stream *stream = &dev->stream;
>> +	v4l2_std_id std;
>> +	u32 mode = INPUT_MODE_YUV;
>> +	int ret;
>> +
>> +	ret = v4l2_subdev_call(sensor_info->sd, video, querystd, &std);
>> +	if (ret == 0) {
>> +		/* retrieve std from sensor if exist */
>> +		switch (std) {
>> +		case V4L2_STD_NTSC:
>> +			mode = INPUT_MODE_NTSC;
>> +			break;
>> +		case V4L2_STD_PAL:
>> +			mode = INPUT_MODE_PAL;
>> +			break;
>> +		case V4L2_STD_ATSC:
>> +			mode = INPUT_MODE_BT1120;
>> +			break;  
>
>Huh? V4L2_STD_* is only used for SDTV video receivers (i.e. Composite, S-Video,
>analog TV). Sensors do not use it. So what is going on here?
>
>And V4L2_STD_ATSC is deprecated and should not be used in new drivers.
>
>> +		default:
>> +			v4l2_err(&dev->v4l2_dev,
>> +				 "std: %lld is not supported", std);  
>
>Missing break.
>
>> +		}
>> +	} else {
>> +		/* determine input mode by mbus_code (fmt_type) */
>> +		switch (stream->cif_fmt_in->fmt_type) {
>> +		case CIF_FMT_TYPE_YUV:
>> +			mode = INPUT_MODE_YUV;
>> +			break;
>> +		case CIF_FMT_TYPE_RAW:
>> +			mode = INPUT_MODE_RAW;
>> +			break;
>> +		}
>> +	}
>> +
>> +	return mode;
>> +}
>> +
>> +static inline u32 rkcif_scl_ctl(struct rkcif_stream *stream)
>> +{
>> +	u32 fmt_type = stream->cif_fmt_in->fmt_type;
>> +
>> +	return (fmt_type == CIF_FMT_TYPE_YUV) ?
>> +		ENABLE_YUV_16BIT_BYPASS : ENABLE_RAW_16BIT_BYPASS;
>> +}
>> +
>> +static int rkcif_stream_start(struct rkcif_stream *stream)
>> +{
>> +	u32 val, mbus_flags, href_pol, vsync_pol,
>> +	    xfer_mode = 0, yc_swap = 0, skip_top = 0;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +	struct rkcif_sensor_info *sensor_info;
>> +	void __iomem *base = dev->base_addr;
>> +
>> +	sensor_info = &dev->sensor;
>> +	stream->frame_idx = 0;
>> +
>> +	mbus_flags = sensor_info->mbus.flags;
>> +	href_pol = (mbus_flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH) ?
>> +			HSY_HIGH_ACTIVE : HSY_LOW_ACTIVE;
>> +	vsync_pol = (mbus_flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH) ?
>> +			VSY_HIGH_ACTIVE : VSY_LOW_ACTIVE;
>> +
>> +	if (rkcif_determine_input_mode(dev) == INPUT_MODE_BT1120) {
>> +		if (stream->cif_fmt_in->field == V4L2_FIELD_NONE)
>> +			xfer_mode = BT1120_TRANSMIT_PROGRESS;
>> +		else
>> +			xfer_mode = BT1120_TRANSMIT_INTERFACE;
>> +		if (!CIF_FETCH_IS_Y_FIRST(stream->cif_fmt_in->dvp_fmt_val))
>> +			yc_swap = BT1120_YC_SWAP;
>> +	}
>> +
>> +	val = vsync_pol | href_pol | rkcif_determine_input_mode(dev) |
>> +	      stream->cif_fmt_out->fmt_val | stream->cif_fmt_in->dvp_fmt_val |
>> +	      xfer_mode | yc_swap;
>> +	write_cif_reg(base, CIF_FOR, val);
>> +	val = stream->pixm.width;
>> +	if (stream->cif_fmt_in->fmt_type == CIF_FMT_TYPE_RAW)
>> +		val = stream->pixm.width * 2;
>> +	write_cif_reg(base, CIF_VIR_LINE_WIDTH, val);
>> +	write_cif_reg(base, CIF_SET_SIZE,
>> +		      stream->pixm.width | (stream->pixm.height << 16));
>> +
>> +	v4l2_subdev_call(sensor_info->sd, sensor, g_skip_top_lines, &skip_top);
>> +
>> +	write_cif_reg(base, CIF_CROP, skip_top << CIF_CROP_Y_SHIFT);
>> +	write_cif_reg(base, CIF_FRAME_STATUS, FRAME_STAT_CLS);
>> +	write_cif_reg(base, CIF_INTSTAT, INTSTAT_CLS);
>> +	write_cif_reg(base, CIF_SCL_CTRL, rkcif_scl_ctl(stream));
>> +
>> +	rkcif_assign_new_buffer_oneframe(stream);
>> +
>> +	write_cif_reg(base, CIF_INTEN, FRAME_END_EN | LINE_ERR_EN |
>> +			    PST_INF_FRAME_END);
>> +
>> +	if (dev->chip_id == CHIP_RK1808_CIF &&
>> +	    rkcif_determine_input_mode(dev) == INPUT_MODE_BT1120)
>> +		write_cif_reg(base, CIF_CTRL,
>> +			      AXI_BURST_16 | MODE_PINGPONG | ENABLE_CAPTURE);
>> +	else
>> +		write_cif_reg(base, CIF_CTRL,
>> +			      AXI_BURST_16 | MODE_ONEFRAME | ENABLE_CAPTURE);
>> +
>> +	stream->state = RKCIF_STATE_STREAMING;
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_start_streaming(struct vb2_queue *queue, unsigned int count)
>> +{
>> +	struct rkcif_stream *stream = queue->drv_priv;
>> +	struct rkcif_device *dev = stream->cifdev;
>> +	struct v4l2_device *v4l2_dev = &dev->v4l2_dev;
>> +	struct v4l2_subdev *sd;
>> +	int ret;
>> +
>> +	if (WARN_ON(stream->state != RKCIF_STATE_READY)) {
>> +		ret = -EBUSY;
>> +		v4l2_err(v4l2_dev, "stream in busy state\n");
>> +		goto destroy_buf;
>> +	}
>> +
>> +	stream->cif_fmt_in = get_input_fmt(dev->sensor.sd);
>> +
>> +	ret = rkcif_create_dummy_buf(stream);
>> +	if (ret < 0) {
>> +		v4l2_err(v4l2_dev, "Failed to create dummy_buf, %d\n", ret);
>> +		goto destroy_buf;
>> +	}
>> +
>> +	ret = pm_runtime_get_sync(dev->dev);
>> +	if (ret < 0) {
>> +		v4l2_err(v4l2_dev, "Failed to get runtime pm, %d\n", ret);
>> +		goto destroy_dummy_buf;
>> +	}
>> +
>> +	/* start sub-devices */
>> +	sd = dev->sensor.sd;
>> +	ret = v4l2_subdev_call(sd, core, s_power, 1);
>> +	if (ret < 0 && ret != -ENOIOCTLCMD)
>> +		goto runtime_put;
>> +	ret = v4l2_subdev_call(sd, video, s_stream, 1);
>> +	if (ret < 0)
>> +		goto subdev_poweroff;
>> +
>> +	ret = rkcif_stream_start(stream);
>> +	if (ret < 0)
>> +		goto stop_stream;
>> +
>> +	return 0;
>> +
>> +stop_stream:
>> +	rkcif_stream_stop(stream);
>> +subdev_poweroff:
>> +	v4l2_subdev_call(sd, core, s_power, 0);
>> +runtime_put:
>> +	pm_runtime_put(dev->dev);
>> +destroy_dummy_buf:
>> +	rkcif_destroy_dummy_buf(stream);
>> +destroy_buf:
>> +	while (!list_empty(&stream->buf_head)) {
>> +		struct rkcif_buffer *buf;
>> +
>> +		buf = list_first_entry(&stream->buf_head,
>> +				       struct rkcif_buffer, queue);
>> +		list_del(&buf->queue);
>> +		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_QUEUED);
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>> +static struct vb2_ops rkcif_vb2_ops = {
>> +	.queue_setup = rkcif_queue_setup,
>> +	.buf_queue = rkcif_buf_queue,
>> +	.wait_prepare = vb2_ops_wait_prepare,
>> +	.wait_finish = vb2_ops_wait_finish,
>> +	.stop_streaming = rkcif_stop_streaming,
>> +	.start_streaming = rkcif_start_streaming,
>> +};
>> +
>> +static int rkcif_init_vb2_queue(struct vb2_queue *q,
>> +				struct rkcif_stream *stream,
>> +				enum v4l2_buf_type buf_type)
>> +{
>> +	q->type = buf_type;
>> +	q->io_modes = VB2_MMAP | VB2_DMABUF;
>> +	q->drv_priv = stream;
>> +	q->ops = &rkcif_vb2_ops;
>> +	q->mem_ops = &vb2_dma_contig_memops;
>> +	q->buf_struct_size = sizeof(struct rkcif_buffer);
>> +	q->min_buffers_needed = CIF_REQ_BUFS_MIN;
>> +	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>> +	q->lock = &stream->vlock;
>> +	q->dev = stream->cifdev->dev;
>> +
>> +	return vb2_queue_init(q);
>> +}
>> +
>> +static void rkcif_set_fmt(struct rkcif_stream *stream,
>> +			  struct v4l2_pix_format_mplane *pixm,
>> +			  bool try)
>> +{
>> +	const struct cif_output_fmt *fmt;
>> +	struct v4l2_rect input_rect;
>> +	unsigned int imagesize = 0, planes;
>> +	u32 xsubs = 1, ysubs = 1, i;
>> +
>> +	fmt = find_output_fmt(stream, pixm->pixelformat);
>> +	if (!fmt)
>> +		fmt = &out_fmts[0];
>> +
>> +	input_rect.width = CIF_MAX_WIDTH;
>> +	input_rect.height = CIF_MAX_HEIGHT;
>> +
>> +	pixm->width = clamp_t(u32, pixm->width,
>> +				CIF_MIN_WIDTH, input_rect.width);
>> +	pixm->height = clamp_t(u32, pixm->height,
>> +				CIF_MIN_HEIGHT, input_rect.height);
>> +
>> +	pixm->num_planes = fmt->mplanes;
>> +	pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
>> +	pixm->colorspace = V4L2_COLORSPACE_SRGB;
>> +
>> +	pixm->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(pixm->colorspace);
>> +	pixm->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(pixm->colorspace);  
>
>This colorimetry information should come from the sensor subdev. That's the
>only component that knows this.
>
>> +
>> +	pixm->pixelformat = fmt->fourcc;
>> +	pixm->field = V4L2_FIELD_NONE;
>> +
>> +	/* calculate plane size and image size */
>> +	fcc_xysubs(fmt->fourcc, &xsubs, &ysubs);
>> +
>> +	planes = fmt->cplanes ? fmt->cplanes : fmt->mplanes;
>> +
>> +	for (i = 0; i < planes; i++) {
>> +		struct v4l2_plane_pix_format *plane_fmt;
>> +		int width, height, bpl, size;
>> +
>> +		if (i == 0) {
>> +			width = pixm->width;
>> +			height = pixm->height;
>> +		} else {
>> +			width = pixm->width / xsubs;
>> +			height = pixm->height / ysubs;
>> +		}
>> +
>> +		bpl = width * fmt->bpp[i] / 8;
>> +		size = bpl * height;
>> +		imagesize += size;
>> +
>> +		if (fmt->mplanes > i) {
>> +			/* Set bpl and size for each mplane */
>> +			plane_fmt = pixm->plane_fmt + i;
>> +			plane_fmt->bytesperline = bpl;
>> +			plane_fmt->sizeimage = size;
>> +		}
>> +	}
>> +
>> +	/* convert to non-MPLANE format.
>> +	 * It's important since we want to unify non-MPLANE
>> +	 * and MPLANE.
>> +	 */
>> +	if (fmt->mplanes == 1)
>> +		pixm->plane_fmt[0].sizeimage = imagesize;
>> +
>> +	if (!try) {
>> +		stream->cif_fmt_out = fmt;
>> +		stream->pixm = *pixm;
>> +	}
>> +}
>> +
>> +void rkcif_stream_init(struct rkcif_device *dev)
>> +{
>> +	struct rkcif_stream *stream = &dev->stream;
>> +	struct v4l2_pix_format_mplane pixm;
>> +
>> +	memset(stream, 0, sizeof(*stream));
>> +	memset(&pixm, 0, sizeof(pixm));
>> +	stream->cifdev = dev;
>> +
>> +	INIT_LIST_HEAD(&stream->buf_head);
>> +	spin_lock_init(&stream->vbq_lock);
>> +	stream->state = RKCIF_STATE_READY;
>> +	init_waitqueue_head(&stream->wq_stopped);
>> +
>> +	/* Set default format */
>> +	pixm.pixelformat = V4L2_PIX_FMT_NV12;
>> +	pixm.width = RKCIF_DEFAULT_WIDTH;
>> +	pixm.height = RKCIF_DEFAULT_HEIGHT;
>> +	rkcif_set_fmt(stream, &pixm, false);
>> +
>> +	stream->crop.left = 0;
>> +	stream->crop.top = 0;
>> +	stream->crop.width = 10;
>> +	stream->crop.height = 10;  
>
>I thought cropping wasn't supported yet? If that's indeed the case, then
>just drop the 'crop' struct.
>
>> +}
>> +
>> +static int rkcif_fh_open(struct file *filp)
>> +{
>> +	struct video_device *vdev = video_devdata(filp);
>> +	struct rkcif_stream *stream = to_rkcif_stream(vdev);
>> +	struct rkcif_device *cifdev = stream->cifdev;
>> +
>> +	rkcif_soft_reset(cifdev);  
>
>Dubious. What happens if you are streaming and from another shell you
>run 'v4l2-ctl -D -d /dev/videoX'? That will open the device and call
>rkcif_soft_reset(). That doesn't sound safe.
>
>> +
>> +	return v4l2_fh_open(filp);
>> +}
>> +
>> +static const struct v4l2_file_operations rkcif_fops = {
>> +	.open = rkcif_fh_open,
>> +	.release = vb2_fop_release,
>> +	.unlocked_ioctl = video_ioctl2,
>> +	.poll = vb2_fop_poll,
>> +	.mmap = vb2_fop_mmap,
>> +};
>> +
>> +static int rkcif_enum_input(struct file *file, void *priv,
>> +			    struct v4l2_input *input)
>> +{
>> +	if (input->index > 0)
>> +		return -EINVAL;
>> +
>> +	input->type = V4L2_INPUT_TYPE_CAMERA;
>> +	strlcpy(input->name, "Camera", sizeof(input->name));  
>
>Use strscpy instead of strcpy/strncpy/strlcpy. We standardized on that in the
>media subsystem.
>
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_try_fmt_vid_cap_mplane(struct file *file, void *fh,
>> +					struct v4l2_format *f)
>> +{
>> +	struct rkcif_stream *stream = video_drvdata(file);
>> +
>> +	rkcif_set_fmt(stream, &f->fmt.pix_mp, true);
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_enum_fmt_vid_cap(struct file *file, void *priv,
>> +					 struct v4l2_fmtdesc *f)
>> +{
>> +	const struct cif_output_fmt *fmt = NULL;
>> +
>> +	if (f->index >= ARRAY_SIZE(out_fmts))
>> +		return -EINVAL;
>> +
>> +	fmt = &out_fmts[f->index];
>> +	f->pixelformat = fmt->fourcc;
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_s_fmt_vid_cap_mplane(struct file *file,
>> +				      void *priv, struct v4l2_format *f)
>> +{
>> +	struct rkcif_stream *stream = video_drvdata(file);
>> +
>> +	rkcif_set_fmt(stream, &f->fmt.pix_mp, false);
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_g_fmt_vid_cap_mplane(struct file *file, void *fh,
>> +				      struct v4l2_format *f)
>> +{
>> +	struct rkcif_stream *stream = video_drvdata(file);
>> +
>> +	f->fmt.pix_mp = stream->pixm;
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_querycap(struct file *file, void *priv,
>> +			  struct v4l2_capability *cap)
>> +{
>> +	struct rkcif_stream *stream = video_drvdata(file);
>> +	struct device *dev = stream->cifdev->dev;
>> +
>> +	strlcpy(cap->driver, dev->driver->name, sizeof(cap->driver));
>> +	strlcpy(cap->card, dev->driver->name, sizeof(cap->card));
>> +	snprintf(cap->bus_info, sizeof(cap->bus_info),
>> +		 "platform:%s", dev_name(dev));
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_enum_framesizes(struct file *file, void *fh,
>> +				 struct v4l2_frmsizeenum *fsize)
>> +{
>> +	struct rkcif_stream *stream = video_drvdata(file);
>> +	struct rkcif_device *dev = stream->cifdev;
>> +	struct v4l2_subdev_frame_size_enum fse = {
>> +		.index = fsize->index,
>> +		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
>> +	};
>> +	const struct cif_output_fmt *fmt;
>> +	int ret;
>> +
>> +	if (!dev->sensor.sd)
>> +		return -EINVAL;
>> +
>> +	fmt = find_output_fmt(stream, fsize->pixel_format);
>> +	if (!fmt)
>> +		return -EINVAL;
>> +
>> +	fse.code = fmt->mbus;
>> +
>> +	ret = v4l2_subdev_call(dev->sensor.sd, pad, enum_frame_size,
>> +			       NULL, &fse);
>> +	if (ret)
>> +		return ret;
>> +
>> +	fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
>> +	fsize->discrete.width = fse.max_width;
>> +	fsize->discrete.height = fse.max_height;
>> +
>> +	return 0;
>> +}
>> +
>> +static int rkcif_g_input(struct file *file, void *fh, unsigned int *i)
>> +{
>> +	*i = 0;
>> +	return 0;
>> +}
>> +
>> +static int rkcif_s_input(struct file *file, void *fh, unsigned int i)
>> +{
>> +	if (i)
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct v4l2_ioctl_ops rkcif_v4l2_ioctl_ops = {
>> +	.vidioc_reqbufs = vb2_ioctl_reqbufs,
>> +	.vidioc_querybuf = vb2_ioctl_querybuf,
>> +	.vidioc_create_bufs = vb2_ioctl_create_bufs,
>> +	.vidioc_qbuf = vb2_ioctl_qbuf,
>> +	.vidioc_expbuf = vb2_ioctl_expbuf,
>> +	.vidioc_dqbuf = vb2_ioctl_dqbuf,
>> +	.vidioc_prepare_buf = vb2_ioctl_prepare_buf,
>> +	.vidioc_streamon = vb2_ioctl_streamon,
>> +	.vidioc_streamoff = vb2_ioctl_streamoff,
>> +
>> +	.vidioc_enum_fmt_vid_cap = rkcif_enum_fmt_vid_cap,
>> +	.vidioc_try_fmt_vid_cap_mplane = rkcif_try_fmt_vid_cap_mplane,
>> +	.vidioc_s_fmt_vid_cap_mplane = rkcif_s_fmt_vid_cap_mplane,
>> +	.vidioc_g_fmt_vid_cap_mplane = rkcif_g_fmt_vid_cap_mplane,
>> +	.vidioc_querycap = rkcif_querycap,
>> +	.vidioc_enum_framesizes = rkcif_enum_framesizes,
>> +
>> +	.vidioc_enum_input = rkcif_enum_input,
>> +	.vidioc_g_input = rkcif_g_input,
>> +	.vidioc_s_input = rkcif_s_input,
>> +};
>> +
>> +void rkcif_unregister_stream_vdev(struct rkcif_device *dev)
>> +{
>> +	struct rkcif_stream *stream = &dev->stream;
>> +
>> +	media_entity_cleanup(&stream->vdev.entity);
>> +	video_unregister_device(&stream->vdev);
>> +}
>> +
>> +int rkcif_register_stream_vdev(struct rkcif_device *dev)
>> +{
>> +	struct rkcif_stream *stream = &dev->stream;
>> +	struct v4l2_device *v4l2_dev = &dev->v4l2_dev;
>> +	struct video_device *vdev = &stream->vdev;
>> +	int ret;
>> +
>> +	strlcpy(vdev->name, CIF_VIDEODEVICE_NAME, sizeof(vdev->name));
>> +	mutex_init(&stream->vlock);
>> +
>> +	vdev->ioctl_ops = &rkcif_v4l2_ioctl_ops;
>> +	vdev->release = video_device_release_empty;
>> +	vdev->fops = &rkcif_fops;
>> +	vdev->minor = -1;
>> +	vdev->v4l2_dev = v4l2_dev;
>> +	vdev->lock = &stream->vlock;
>> +	vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE |
>> +			    V4L2_CAP_STREAMING;
>> +	video_set_drvdata(vdev, stream);
>> +	vdev->vfl_dir = VFL_DIR_RX;
>> +	stream->pad.flags = MEDIA_PAD_FL_SINK;
>> +
>> +	rkcif_init_vb2_queue(&stream->buf_queue, stream,
>> +			V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE |
>> +			V4L2_BUF_TYPE_VIDEO_CAPTURE);
>> +	vdev->queue = &stream->buf_queue;
>> +	strscpy(vdev->name, KBUILD_MODNAME, sizeof(vdev->name));
>> +
>> +	ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);  
>
>Hmm, you aren't basing your code on the latest media git repo
>(https://git.linuxtv.org//media_tree.git).
>
>VFL_TYPE_GRABBER was renamed to VFL_TYPE_VIDEO.
>
>> +	if (ret < 0) {
>> +		v4l2_err(v4l2_dev,
>> +			 "video_register_device failed with error %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = media_entity_pads_init(&vdev->entity, 1, &stream->pad);
>> +	if (ret < 0)
>> +		goto unreg;
>> +
>> +	return 0;
>> +unreg:
>> +	video_unregister_device(vdev);
>> +	return ret;
>> +}
>> +
>> +static void rkcif_vb_done_oneframe(struct rkcif_stream *stream,
>> +				   struct vb2_v4l2_buffer *vb_done)
>> +{
>> +	const struct cif_output_fmt *fmt = stream->cif_fmt_out;
>> +	u32 i;
>> +
>> +	/* Dequeue a filled buffer */
>> +	for (i = 0; i < fmt->mplanes; i++) {
>> +		vb2_set_plane_payload(&vb_done->vb2_buf, i,
>> +			stream->pixm.plane_fmt[i].sizeimage);
>> +	}
>> +	vb_done->vb2_buf.timestamp = ktime_get_ns();
>> +	vb2_buffer_done(&vb_done->vb2_buf, VB2_BUF_STATE_DONE);
>> +}
>> +
>> +void rkcif_irq_oneframe(struct rkcif_device *cif_dev)
>> +{
>> +	struct rkcif_stream *stream = &cif_dev->stream;
>> +	u32 lastline, lastpix, ctl, cif_frmst, intstat;
>> +	void __iomem *base = cif_dev->base_addr;
>> +
>> +	intstat = read_cif_reg(base, CIF_INTSTAT);
>> +	cif_frmst = read_cif_reg(base, CIF_FRAME_STATUS);
>> +	lastline = CIF_FETCH_Y_LAST_LINE(read_cif_reg(base, CIF_LAST_LINE));
>> +	lastpix = read_cif_reg(base, CIF_LAST_PIX);
>> +	ctl = read_cif_reg(base, CIF_CTRL);
>> +
>> +	/* There are two irqs enabled:
>> +	 *  - PST_INF_FRAME_END: cif FIFO is ready, this is prior to FRAME_END
>> +	 *  -         FRAME_END: cif has saved frame to memory, a frame ready
>> +	 */
>> +
>> +	if ((intstat & PST_INF_FRAME_END)) {
>> +		write_cif_reg(base, CIF_INTSTAT, PST_INF_FRAME_END_CLR);
>> +
>> +		if (stream->stopping)
>> +			/* To stop CIF ASAP, before FRAME_END irq */
>> +			write_cif_reg(base, CIF_CTRL, ctl & (~ENABLE_CAPTURE));
>> +	}
>> +
>> +	if ((intstat & LINE_ERR)) {
>> +		write_cif_reg(base, CIF_INTSTAT, LINE_ERR_CLR);
>> +
>> +		if (stream->stopping) {
>> +			rkcif_stream_stop(stream);
>> +			stream->stopping = false;
>> +			wake_up(&stream->wq_stopped);
>> +			return;
>> +		}
>> +
>> +		v4l2_err(&cif_dev->v4l2_dev,
>> +			 "Bad frame, irq:0x%x frmst:0x%x size:%dx%d\n",
>> +			 intstat, cif_frmst, lastline, lastpix);
>> +		/* Clear status to receive into the same buffer */
>> +		write_cif_reg(base, CIF_FRAME_STATUS, FRM0_STAT_CLS);
>> +		return;
>> +	}
>> +
>> +
>> +	if ((intstat & FRAME_END)) {
>> +		struct vb2_v4l2_buffer *vb_done = NULL;
>> +
>> +		write_cif_reg(base, CIF_INTSTAT, FRAME_END_CLR);
>> +
>> +		if (stream->stopping) {
>> +			rkcif_stream_stop(stream);
>> +			stream->stopping = false;
>> +			wake_up(&stream->wq_stopped);
>> +			return;
>> +		}
>> +
>> +		if (lastline != stream->pixm.height ||
>> +		    !(cif_frmst & CIF_F0_READY)) {
>> +			v4l2_err(&cif_dev->v4l2_dev,
>> +				 "Bad frame, irq:0x%x frmst:0x%x size:%dx%d\n",
>> +				 intstat, cif_frmst, lastline, lastpix);
>> +			/* Clear status to receive into the same buffer */
>> +			write_cif_reg(base, CIF_FRAME_STATUS, FRM0_STAT_CLS);
>> +			return;
>> +		}
>> +
>> +		if (stream->curr_buf)
>> +			vb_done = &stream->curr_buf->vb;
>> +		rkcif_assign_new_buffer_oneframe(stream);
>> +
>> +		/* In one-frame mode, must clear status manually to enable
>> +		 * the next frame end irq
>> +		 */
>> +		write_cif_reg(base, CIF_FRAME_STATUS, FRM0_STAT_CLS);
>> +
>> +		if (vb_done)
>> +			rkcif_vb_done_oneframe(stream, vb_done);
>> +
>> +		stream->frame_idx++;
>> +	}
>> +}
>> diff --git a/drivers/media/platform/rockchip/cif/dev.c b/drivers/media/platform/rockchip/cif/dev.c
>> new file mode 100644
>> index 000000000000..88f3833b7cdc
>> --- /dev/null
>> +++ b/drivers/media/platform/rockchip/cif/dev.c
>> @@ -0,0 +1,407 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Rockchip CIF Driver
>> + *
>> + * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
>> + */
>> +
>> +#include <linux/clk.h>
>> +#include <linux/delay.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_graph.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/of_reserved_mem.h>
>> +#include <linux/reset.h>
>> +#include <linux/pm_runtime.h>
>> +#include <linux/pinctrl/consumer.h>
>> +#include <media/v4l2-fwnode.h>
>> +
>> +#include "dev.h"
>> +#include "regs.h"
>> +
>> +#define RKCIF_VERNO_LEN		10
>> +
>> +struct cif_match_data {
>> +	int chip_id;
>> +	const char * const *clks;
>> +	const char * const *rsts;
>> +	int clks_num;
>> +	int rsts_num;
>> +};
>> +
>> +static int rkcif_create_links(struct rkcif_device *dev)
>> +{
>> +	struct v4l2_subdev *sd = dev->sensor.sd;
>> +	int ret;
>> +
>> +	ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>> +					  MEDIA_PAD_FL_SOURCE);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = media_create_pad_link(&sd->entity, 0,
>> +				    &dev->stream.vdev.entity, 0,
>> +				    MEDIA_LNK_FL_ENABLED);
>> +	if (ret) {
>> +		dev_err(dev->dev, "failed to create link");
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int subdev_notifier_complete(struct v4l2_async_notifier *notifier)
>> +{
>> +	struct rkcif_device *dev;
>> +	int ret;
>> +
>> +	dev = container_of(notifier, struct rkcif_device, notifier);
>> +
>> +	mutex_lock(&dev->media_dev.graph_mutex);
>> +
>> +	ret = rkcif_create_links(dev);
>> +	if (ret < 0)
>> +		goto unlock;
>> +
>> +	ret = v4l2_device_register_subdev_nodes(&dev->v4l2_dev);
>> +	if (ret < 0)
>> +		goto unlock;
>> +
>> +unlock:
>> +	mutex_unlock(&dev->media_dev.graph_mutex);
>> +	return ret;
>> +}
>> +
>> +static int subdev_notifier_bound(struct v4l2_async_notifier *notifier,
>> +				 struct v4l2_subdev *subdev,
>> +				 struct v4l2_async_subdev *asd)
>> +{
>> +	struct rkcif_device *cif_dev = container_of(notifier,
>> +					struct rkcif_device, notifier);
>> +
>> +	int pad;
>> +
>> +	cif_dev->sensor.sd = subdev;
>> +	pad = media_entity_get_fwnode_pad(&subdev->entity, subdev->fwnode,
>> +					  MEDIA_PAD_FL_SOURCE);
>> +	if (pad < 0)
>> +		return pad;
>> +
>> +	cif_dev->sensor.pad = pad;
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct v4l2_async_notifier_operations subdev_notifier_ops = {
>> +	.bound = subdev_notifier_bound,
>> +	.complete = subdev_notifier_complete,
>> +};
>> +
>> +static int cif_subdev_notifier(struct rkcif_device *cif_dev)
>> +{
>> +	struct v4l2_async_notifier *ntf = &cif_dev->notifier;
>> +	struct device *dev = cif_dev->dev;
>> +	struct v4l2_fwnode_endpoint vep = {
>> +		.bus_type = V4L2_MBUS_PARALLEL,
>> +	};
>> +	struct fwnode_handle *ep;
>> +	int ret;
>> +
>> +	v4l2_async_notifier_init(ntf);
>> +
>> +	ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(dev), 0, 0,
>> +			FWNODE_GRAPH_ENDPOINT_NEXT);
>> +	if (!ep)
>> +		return -EINVAL;
>> +
>> +	ret = v4l2_fwnode_endpoint_parse(ep, &vep);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = v4l2_async_notifier_add_fwnode_remote_subdev(ntf, ep,
>> +							   &cif_dev->asd);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ntf->ops = &subdev_notifier_ops;
>> +
>> +	fwnode_handle_put(ep);
>> +
>> +	ret = v4l2_async_notifier_register(&cif_dev->v4l2_dev, ntf);
>> +	return ret;
>> +}
>> +
>> +static int rkcif_register_platform_subdevs(struct rkcif_device *cif_dev)
>> +{
>> +	int ret;
>> +
>> +	ret = rkcif_register_stream_vdev(cif_dev);  
>
>You must wait with registering the video device (and media device as well
>for that matter) until all subdevs are ready. So this should be moved to
>subdev_notifier_complete.
>
>Otherwise device nodes are created that cannot be used yet because the
>subdevs aren't ready yet.
>
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	ret = cif_subdev_notifier(cif_dev);
>> +	if (ret < 0) {
>> +		v4l2_err(&cif_dev->v4l2_dev,
>> +			 "Failed to register subdev notifier(%d)\n", ret);
>> +		rkcif_unregister_stream_vdev(cif_dev);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const char * const px30_cif_clks[] = {
>> +	"aclk_cif",
>> +	"hclk_cif",
>> +	"pclk_cif",
>> +	"cif_out",
>> +};
>> +
>> +static const char * const px30_cif_rsts[] = {
>> +	"rst_cif_a",
>> +	"rst_cif_h",
>> +	"rst_cif_pclkin",
>> +};
>> +
>> +static const struct cif_match_data px30_cif_match_data = {
>> +	.chip_id = CHIP_PX30_CIF,
>> +	.clks = px30_cif_clks,
>> +	.clks_num = ARRAY_SIZE(px30_cif_clks),
>> +	.rsts = px30_cif_rsts,
>> +	.rsts_num = ARRAY_SIZE(px30_cif_rsts),
>> +};
>> +
>> +static const struct of_device_id rkcif_plat_of_match[] = {
>> +	{
>> +		.compatible = "rockchip,px30-cif",
>> +		.data = &px30_cif_match_data,
>> +	},
>> +	{},
>> +};
>> +
>> +static irqreturn_t rkcif_irq_handler(int irq, void *ctx)
>> +{
>> +	struct device *dev = ctx;
>> +	struct rkcif_device *cif_dev = dev_get_drvdata(dev);
>> +
>> +	rkcif_irq_oneframe(cif_dev);
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>> +static void rkcif_disable_sys_clk(struct rkcif_device *cif_dev)
>> +{
>> +	int i;
>> +
>> +	for (i = cif_dev->clk_size - 1; i >= 0; i--)
>> +		clk_disable_unprepare(cif_dev->clks[i]);
>> +}
>> +
>> +static int rkcif_enable_sys_clk(struct rkcif_device *cif_dev)
>> +{
>> +	int i, ret = -EINVAL;
>> +
>> +	for (i = 0; i < cif_dev->clk_size; i++) {
>> +		ret = clk_prepare_enable(cif_dev->clks[i]);
>> +
>> +		if (ret < 0)
>> +			goto err;
>> +	}
>> +
>> +	return 0;
>> +
>> +err:
>> +	for (--i; i >= 0; --i)
>> +		clk_disable_unprepare(cif_dev->clks[i]);
>> +
>> +	return ret;
>> +}
>> +
>> +void rkcif_soft_reset(struct rkcif_device *cif_dev)
>> +{
>> +	unsigned int i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(cif_dev->cif_rst); i++)
>> +		if (cif_dev->cif_rst[i])
>> +			reset_control_assert(cif_dev->cif_rst[i]);
>> +	udelay(5);
>> +	for (i = 0; i < ARRAY_SIZE(cif_dev->cif_rst); i++)
>> +		if (cif_dev->cif_rst[i])
>> +			reset_control_deassert(cif_dev->cif_rst[i]);
>> +}
>> +
>> +static int rkcif_plat_probe(struct platform_device *pdev)
>> +{
>> +	const struct of_device_id *match;
>> +	struct device_node *node = pdev->dev.of_node;
>> +	struct device *dev = &pdev->dev;
>> +	struct v4l2_device *v4l2_dev;
>> +	struct rkcif_device *cif_dev;
>> +	const struct cif_match_data *data;
>> +	struct resource *res;
>> +	int i, ret, irq;
>> +
>> +	match = of_match_node(rkcif_plat_of_match, node);
>> +	if (IS_ERR(match))
>> +		return PTR_ERR(match);
>> +
>> +	cif_dev = devm_kzalloc(dev, sizeof(*cif_dev), GFP_KERNEL);
>> +	if (!cif_dev)
>> +		return -ENOMEM;
>> +
>> +	dev_set_drvdata(dev, cif_dev);
>> +	cif_dev->dev = dev;
>> +
>> +	irq = platform_get_irq(pdev, 0);
>> +	if (irq < 0)
>> +		return irq;
>> +
>> +	ret = devm_request_irq(dev, irq, rkcif_irq_handler, IRQF_SHARED,
>> +			       dev_driver_string(dev), dev);
>> +	if (ret < 0) {
>> +		dev_err(dev, "request irq failed: %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	cif_dev->irq = irq;
>> +	data = match->data;
>> +	cif_dev->chip_id = data->chip_id;
>> +
>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +	cif_dev->base_addr = devm_ioremap_resource(dev, res);
>> +
>> +	if (IS_ERR(cif_dev->base_addr))
>> +		return PTR_ERR(cif_dev->base_addr);
>> +
>> +	if (data->clks_num > RKCIF_MAX_BUS_CLK ||
>> +		data->rsts_num > RKCIF_MAX_RESET) {
>> +		dev_err(dev, "out of range: clks(%d %d) rsts(%d %d)\n",
>> +			data->clks_num, RKCIF_MAX_BUS_CLK,
>> +			data->rsts_num, RKCIF_MAX_RESET);
>> +		return -EINVAL;
>> +	}
>> +
>> +	for (i = 0; i < data->clks_num; i++) {
>> +		struct clk *clk = devm_clk_get(dev, data->clks[i]);
>> +
>> +		if (IS_ERR(clk)) {
>> +			dev_err(dev, "failed to get %s\n", data->clks[i]);
>> +			return PTR_ERR(clk);
>> +		}
>> +
>> +		cif_dev->clks[i] = clk;
>> +	}
>> +
>> +	cif_dev->clk_size = data->clks_num;
>> +
>> +	for (i = 0; i < data->rsts_num; i++) {
>> +		struct reset_control *rst =
>> +			devm_reset_control_get(dev, data->rsts[i]);
>> +		if (IS_ERR(rst)) {
>> +			dev_err(dev, "failed to get %s\n", data->rsts[i]);
>> +			return PTR_ERR(rst);
>> +		}
>> +		cif_dev->cif_rst[i] = rst;
>> +	}
>> +
>> +	/* Initialize the stream */
>> +	rkcif_stream_init(cif_dev);
>> +
>> +	strlcpy(cif_dev->media_dev.model, "rkcif",
>> +		sizeof(cif_dev->media_dev.model));
>> +	cif_dev->media_dev.dev = &pdev->dev;
>> +	v4l2_dev = &cif_dev->v4l2_dev;
>> +	v4l2_dev->mdev = &cif_dev->media_dev;
>> +	strlcpy(v4l2_dev->name, "rkcif", sizeof(v4l2_dev->name));
>> +	v4l2_ctrl_handler_init(&cif_dev->ctrl_handler, 8);
>> +	v4l2_dev->ctrl_handler = &cif_dev->ctrl_handler;
>> +
>> +	ret = v4l2_device_register(cif_dev->dev, &cif_dev->v4l2_dev);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	media_device_init(&cif_dev->media_dev);
>> +
>> +	ret = media_device_register(&cif_dev->media_dev);
>> +	if (ret < 0) {
>> +		v4l2_err(v4l2_dev, "Failed to register media device: %d\n",
>> +			 ret);
>> +		goto err_unreg_v4l2_dev;
>> +	}
>> +
>> +	/* create & register platefom subdev (from of_node) */  
>
>platefom -> platform
>
>> +	ret = rkcif_register_platform_subdevs(cif_dev);
>> +	if (ret < 0)
>> +		goto err_unreg_media_dev;
>> +
>> +	ret = of_reserved_mem_device_init(dev);
>> +	if (ret)
>> +		v4l2_warn(v4l2_dev, "No reserved memory region assign to CIF\n");
>> +
>> +	pm_runtime_enable(&pdev->dev);
>> +
>> +	return 0;
>> +
>> +err_unreg_media_dev:
>> +	media_device_unregister(&cif_dev->media_dev);
>> +err_unreg_v4l2_dev:
>> +	v4l2_device_unregister(&cif_dev->v4l2_dev);
>> +	return ret;
>> +}
>> +
>> +static int rkcif_plat_remove(struct platform_device *pdev)
>> +{
>> +	struct rkcif_device *cif_dev = platform_get_drvdata(pdev);
>> +
>> +	pm_runtime_disable(&pdev->dev);
>> +
>> +	media_device_unregister(&cif_dev->media_dev);
>> +	v4l2_device_unregister(&cif_dev->v4l2_dev);
>> +	rkcif_unregister_stream_vdev(cif_dev);
>> +
>> +	return 0;
>> +}
>> +
>> +static int __maybe_unused rkcif_runtime_suspend(struct device *dev)
>> +{
>> +	struct rkcif_device *cif_dev = dev_get_drvdata(dev);
>> +
>> +	rkcif_disable_sys_clk(cif_dev);
>> +
>> +	return pinctrl_pm_select_sleep_state(dev);
>> +}
>> +
>> +static int __maybe_unused rkcif_runtime_resume(struct device *dev)
>> +{
>> +	struct rkcif_device *cif_dev = dev_get_drvdata(dev);
>> +	int ret;
>> +
>> +	ret = pinctrl_pm_select_default_state(dev);
>> +	if (ret < 0)
>> +		return ret;
>> +	rkcif_enable_sys_clk(cif_dev);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct dev_pm_ops rkcif_plat_pm_ops = {
>> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
>> +				pm_runtime_force_resume)
>> +	SET_RUNTIME_PM_OPS(rkcif_runtime_suspend, rkcif_runtime_resume, NULL)
>> +};
>> +
>> +static struct platform_driver rkcif_plat_drv = {
>> +	.driver = {
>> +		   .name = CIF_DRIVER_NAME,
>> +		   .of_match_table = of_match_ptr(rkcif_plat_of_match),
>> +		   .pm = &rkcif_plat_pm_ops,
>> +	},
>> +	.probe = rkcif_plat_probe,
>> +	.remove = rkcif_plat_remove,
>> +};
>> +
>> +module_platform_driver(rkcif_plat_drv);
>> +MODULE_AUTHOR("Rockchip Camera/ISP team");
>> +MODULE_DESCRIPTION("Rockchip CIF platform driver");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/media/platform/rockchip/cif/dev.h b/drivers/media/platform/rockchip/cif/dev.h
>> new file mode 100644
>> index 000000000000..3dc47d461d04
>> --- /dev/null
>> +++ b/drivers/media/platform/rockchip/cif/dev.h
>> @@ -0,0 +1,208 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Rockchip CIF Driver
>> + *
>> + * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
>> + */
>> +
>> +#ifndef _RKCIF_DEV_H
>> +#define _RKCIF_DEV_H
>> +
>> +#include <linux/mutex.h>
>> +#include <media/media-device.h>
>> +#include <media/media-entity.h>
>> +#include <media/v4l2-ctrls.h>
>> +#include <media/v4l2-device.h>
>> +#include <media/videobuf2-v4l2.h>
>> +
>> +#define CIF_DRIVER_NAME		"rkcif"
>> +#define CIF_VIDEODEVICE_NAME	"stream_cif"
>> +
>> +#define RKCIF_MAX_BUS_CLK	8
>> +#define RKCIF_MAX_SENSOR	2
>> +#define RKCIF_MAX_RESET		5
>> +#define RKCIF_MAX_CSI_CHANNEL	4
>> +
>> +#define RKCIF_DEFAULT_WIDTH	640
>> +#define RKCIF_DEFAULT_HEIGHT	480
>> +
>> +#define write_cif_reg(base, addr, val)  writel(val, (addr) + (base))
>> +#define read_cif_reg(base, addr) readl((addr) + (base))
>> +
>> +#define write_csihost_reg(base, addr, val)  writel(val, (addr) + (base))
>> +#define read_csihost_reg(base, addr) readl((addr) + (base))
>> +
>> +enum rkcif_state {
>> +	RKCIF_STATE_DISABLED,
>> +	RKCIF_STATE_READY,
>> +	RKCIF_STATE_STREAMING
>> +};
>> +
>> +enum rkcif_chip_id {
>> +	CHIP_PX30_CIF,
>> +	CHIP_RK1808_CIF,
>> +	CHIP_RK3128_CIF,
>> +	CHIP_RK3288_CIF
>> +};
>> +
>> +enum host_type_t {
>> +	RK_CSI_RXHOST,
>> +	RK_DSI_RXHOST
>> +};
>> +
>> +struct rkcif_buffer {
>> +	struct vb2_v4l2_buffer vb;
>> +	struct list_head queue;
>> +	union {
>> +		u32 buff_addr[VIDEO_MAX_PLANES];
>> +		void *vaddr[VIDEO_MAX_PLANES];
>> +	};
>> +};
>> +
>> +struct rkcif_dummy_buffer {
>> +	void *vaddr;
>> +	dma_addr_t dma_addr;
>> +	u32 size;
>> +};
>> +
>> +extern int rkcif_debug;
>> +
>> +static inline struct rkcif_buffer *to_rkcif_buffer(struct vb2_v4l2_buffer *vb)
>> +{
>> +	return container_of(vb, struct rkcif_buffer, vb);
>> +}
>> +
>> +/*
>> + * struct rkcif_sensor_info - Sensor infomations
>> + * @mbus: media bus configuration
>> + */
>> +struct rkcif_sensor_info {
>> +	struct v4l2_subdev *sd;
>> +	int pad;
>> +	struct v4l2_mbus_config mbus;
>> +	int lanes;
>> +};
>> +
>> +/*
>> + * struct cif_output_fmt - The output format
>> + *
>> + * @fourcc: pixel format in fourcc
>> + * @cplanes: number of colour planes
>> + * @fmt_val: the fmt val corresponding to CIF_FOR register
>> + * @bpp: bits per pixel for each cplanes
>> + */
>> +struct cif_output_fmt {
>> +	u32 fourcc;
>> +	u32 mbus;
>> +	u8 cplanes;
>> +	u8 mplanes;
>> +	u32 fmt_val;
>> +	u8 bpp[VIDEO_MAX_PLANES];
>> +};
>> +
>> +enum cif_fmt_type {
>> +	CIF_FMT_TYPE_YUV = 0,
>> +	CIF_FMT_TYPE_RAW,
>> +};
>> +
>> +/*
>> + * struct cif_input_fmt - The input mbus format from sensor
>> + *
>> + * @mbus_code: mbus format
>> + * @dvp_fmt_val: the fmt val corresponding to CIF_FOR register
>> + * @csi_fmt_val: the fmt val corresponding to CIF_CSI_ID_CTRL
>> + * @field: the field type of the input from sensor
>> + */
>> +struct cif_input_fmt {
>> +	u32 mbus_code;
>> +	u32 dvp_fmt_val;
>> +	u32 csi_fmt_val;
>> +	enum cif_fmt_type fmt_type;
>> +	enum v4l2_field field;
>> +};
>> +
>> +/*
>> + * struct rkcif_stream - Stream states TODO
>> + *
>> + * @vbq_lock: lock to protect buf_queue
>> + * @buf_queue: queued buffer list
>> + * @dummy_buf: dummy space to store dropped data
>> + *
>> + * rkcif use shadowsock registers, so it need two buffer at a time
>> + * @curr_buf: the buffer used for current frame
>> + * @next_buf: the buffer used for next frame
>> + */
>> +struct rkcif_stream {
>> +	struct rkcif_device		*cifdev;
>> +	enum rkcif_state		state;
>> +	bool				stopping;
>> +	wait_queue_head_t		wq_stopped;
>> +	int				frame_idx;
>> +	int				frame_phase;
>> +
>> +	/* lock between irq and buf_queue */
>> +	spinlock_t			vbq_lock;
>> +	struct vb2_queue		buf_queue;
>> +	struct list_head		buf_head;
>> +	struct rkcif_dummy_buffer	dummy_buf;
>> +	struct rkcif_buffer		*curr_buf;
>> +	struct rkcif_buffer		*next_buf;
>> +
>> +	/* vfd lock */
>> +	struct mutex			vlock;
>> +	struct video_device		vdev;
>> +	/* TODO: pad for dvp and mipi separately? */
>> +	struct media_pad		pad;
>> +
>> +	const struct cif_output_fmt	*cif_fmt_out;
>> +	const struct cif_input_fmt	*cif_fmt_in;
>> +	struct v4l2_pix_format_mplane	pixm;
>> +	struct v4l2_rect		crop;
>> +	int				crop_enable;
>> +};
>> +
>> +static inline struct rkcif_stream *to_rkcif_stream(struct video_device *vdev)
>> +{
>> +	return container_of(vdev, struct rkcif_stream, vdev);
>> +}
>> +
>> +/*
>> + * struct rkcif_device - ISP platform device
>> + * @base_addr: base register address
>> + * @active_sensor: sensor in-use, set when streaming on
>> + * @stream: capture video device
>> + */
>> +struct rkcif_device {
>> +	struct list_head		list;
>> +	struct device			*dev;
>> +	int				irq;
>> +	void __iomem			*base_addr;
>> +	void __iomem			*csi_base;
>> +	struct clk			*clks[RKCIF_MAX_BUS_CLK];
>> +	int				clk_size;
>> +	struct vb2_alloc_ctx		*alloc_ctx;
>> +	bool				iommu_en;
>> +	struct iommu_domain		*domain;
>> +	struct reset_control		*cif_rst[RKCIF_MAX_RESET];
>> +
>> +	struct v4l2_device		v4l2_dev;
>> +	struct media_device		media_dev;
>> +	struct v4l2_ctrl_handler	ctrl_handler;
>> +	struct v4l2_async_notifier	notifier;
>> +	struct v4l2_async_subdev	asd;
>> +	struct rkcif_sensor_info	sensor;
>> +
>> +	struct rkcif_stream		stream;
>> +
>> +	int				chip_id;
>> +};
>> +
>> +void rkcif_unregister_stream_vdev(struct rkcif_device *dev);
>> +int rkcif_register_stream_vdev(struct rkcif_device *dev);
>> +void rkcif_stream_init(struct rkcif_device *dev);
>> +
>> +void rkcif_irq_oneframe(struct rkcif_device *cif_dev);
>> +void rkcif_irq_pingpong(struct rkcif_device *cif_dev);
>> +void rkcif_soft_reset(struct rkcif_device *cif_dev);
>> +
>> +#endif
>> diff --git a/drivers/media/platform/rockchip/cif/regs.h b/drivers/media/platform/rockchip/cif/regs.h
>> new file mode 100644
>> index 000000000000..5e0f926c70d3
>> --- /dev/null
>> +++ b/drivers/media/platform/rockchip/cif/regs.h
>> @@ -0,0 +1,256 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Rockchip CIF Driver
>> + *
>> + * Copyright (C) 2018 Rockchip Electronics Co., Ltd.
>> + */
>> +
>> +#ifndef _RKCIF_REGS_H
>> +#define _RKCIF_REGS_H
>> +
>> +/* CIF Reg Offset */
>> +#define CIF_CTRL			0x00
>> +#define CIF_INTEN			0x04
>> +#define CIF_INTSTAT			0x08
>> +#define CIF_FOR				0x0c
>> +#define CIF_LINE_NUM_ADDR		0x10
>> +#define CIF_FRM0_ADDR_Y			0x14
>> +#define CIF_FRM0_ADDR_UV		0x18
>> +#define CIF_FRM1_ADDR_Y			0x1c
>> +#define CIF_FRM1_ADDR_UV		0x20
>> +#define CIF_VIR_LINE_WIDTH		0x24
>> +#define CIF_SET_SIZE			0x28
>> +#define CIF_SCM_ADDR_Y			0x2c
>> +#define CIF_SCM_ADDR_U			0x30
>> +#define CIF_SCM_ADDR_V			0x34
>> +#define CIF_WB_UP_FILTER		0x38
>> +#define CIF_WB_LOW_FILTER		0x3c
>> +#define CIF_WBC_CNT			0x40
>> +#define CIF_CROP			0x44
>> +#define CIF_SCL_CTRL			0x48
>> +#define CIF_SCL_DST			0x4c
>> +#define CIF_SCL_FCT			0x50
>> +#define CIF_SCL_VALID_NUM		0x54
>> +#define CIF_LINE_LOOP_CTR		0x58
>> +#define CIF_FRAME_STATUS		0x60
>> +#define CIF_CUR_DST			0x64
>> +#define CIF_LAST_LINE			0x68
>> +#define CIF_LAST_PIX			0x6c
>> +
>> +/* RK1808 CIF CSI Registers Offset */
>> +#define CIF_CSI_ID0_CTRL0		0x80
>> +#define CIF_CSI_ID0_CTRL1		0x84
>> +#define CIF_CSI_ID1_CTRL0		0x88
>> +#define CIF_CSI_ID1_CTRL1		0x8c
>> +#define CIF_CSI_ID2_CTRL0		0x90
>> +#define CIF_CSI_ID2_CTRL1		0x94
>> +#define CIF_CSI_ID3_CTRL0		0x98
>> +#define CIF_CSI_ID3_CTRL1		0x9c
>> +#define CIF_CSI_WATER_LINE		0xa0
>> +#define CIF_CSI_FRM0_ADDR_Y_ID0		0xa4
>> +#define CIF_CSI_FRM1_ADDR_Y_ID0		0xa8
>> +#define CIF_CSI_FRM0_ADDR_UV_ID0	0xac
>> +#define CIF_CSI_FRM1_ADDR_UV_ID0	0xb0
>> +#define CIF_CSI_FRM0_VLW_Y_ID0		0xb4
>> +#define CIF_CSI_FRM1_VLW_Y_ID0		0xb8
>> +#define CIF_CSI_FRM0_VLW_UV_ID0		0xbc
>> +#define CIF_CSI_FRM1_VLW_UV_ID0		0xc0
>> +#define CIF_CSI_FRM0_ADDR_Y_ID1		0xc4
>> +#define CIF_CSI_FRM1_ADDR_Y_ID1		0xc8
>> +#define CIF_CSI_FRM0_ADDR_UV_ID1	0xcc
>> +#define CIF_CSI_FRM1_ADDR_UV_ID1	0xd0
>> +#define CIF_CSI_FRM0_VLW_Y_ID1		0xd4
>> +#define CIF_CSI_FRM1_VLW_Y_ID1		0xd8
>> +#define CIF_CSI_FRM0_VLW_UV_ID1		0xdc
>> +#define CIF_CSI_FRM1_VLW_UV_ID1		0xe0
>> +#define CIF_CSI_FRM0_ADDR_Y_ID2		0xe4
>> +#define CIF_CSI_FRM1_ADDR_Y_ID2		0xe8
>> +#define CIF_CSI_FRM0_ADDR_UV_ID2	0xec
>> +#define CIF_CSI_FRM1_ADDR_UV_ID2	0xf0
>> +#define CIF_CSI_FRM0_VLW_Y_ID2		0xf4
>> +#define CIF_CSI_FRM1_VLW_Y_ID2		0xf8
>> +#define CIF_CSI_FRM0_VLW_UV_ID2		0xfc
>> +#define CIF_CSI_FRM1_VLW_UV_ID2		0x100
>> +#define CIF_CSI_FRM0_ADDR_Y_ID3		0x104
>> +#define CIF_CSI_FRM1_ADDR_Y_ID3		0x108
>> +#define CIF_CSI_FRM0_ADDR_UV_ID3	0x10c
>> +#define CIF_CSI_FRM1_ADDR_UV_ID3	0x110
>> +#define CIF_CSI_FRM0_VLW_Y_ID3		0x114
>> +#define CIF_CSI_FRM1_VLW_Y_ID3		0x118
>> +#define CIF_CSI_FRM0_VLW_UV_ID3		0x11c
>> +#define CIF_CSI_FRM1_VLW_UV_ID3		0x120
>> +#define CIF_CSI_INTEN			0x124
>> +#define CIF_CSI_INTSTAT			0x128
>> +#define CIF_CSI_LINE_INT_NUM_ID0_1	0x12c
>> +#define CIF_CSI_LINE_INT_NUM_ID2_3	0x130
>> +#define CIF_CSI_LINE_CNT_ID0_1		0x134
>> +#define CIF_CSI_LINE_CNT_ID2_3		0x138
>> +#define CIF_CSI_ID0_CROP_START		0x13c
>> +#define CIF_CSI_ID1_CROP_START		0x140
>> +#define CIF_CSI_ID2_CROP_START		0x144
>> +#define CIF_CSI_ID3_CROP_START		0x148
>> +
>> +/* The key register bit description */
>> +
>> +/* CIF_CTRL Reg */
>> +#define DISABLE_CAPTURE			(0x0 << 0)
>> +#define ENABLE_CAPTURE			(0x1 << 0)
>> +#define MODE_ONEFRAME			(0x0 << 1)
>> +#define MODE_PINGPONG			(0x1 << 1)
>> +#define MODE_LINELOOP			(0x2 << 1)
>> +#define AXI_BURST_16			(0xF << 12)
>> +
>> +/* CIF_INTEN */
>> +#define INTEN_DISABLE			(0x0 << 0)
>> +#define FRAME_END_EN			(0x1 << 0)
>> +#define LINE_ERR_EN			(0x1 << 2)
>> +#define BUS_ERR_EN			(0x1 << 6)
>> +#define SCL_ERR_EN			(0x1 << 7)
>> +#define PST_INF_FRAME_END_EN		(0x1 << 9)
>> +
>> +/* CIF INTSTAT */
>> +#define INTSTAT_CLS			(0x3FF)
>> +#define FRAME_END			(0x01 << 0)
>> +#define LINE_ERR			(0x01 << 2)
>> +#define PST_INF_FRAME_END		(0x01 << 9)
>> +#define FRAME_END_CLR			(0x01 << 0)
>> +#define LINE_ERR_CLR			(0x01 << 2)
>> +#define PST_INF_FRAME_END_CLR		(0x01 << 9)
>> +#define INTSTAT_ERR			(0xFC)
>> +
>> +/* FRAME STATUS */
>> +#define FRAME_STAT_CLS			0x00
>> +#define FRM0_STAT_CLS			0x20	/* write 0 to clear frame 0 */
>> +
>> +/* CIF FORMAT */
>> +#define VSY_HIGH_ACTIVE			(0x01 << 0)
>> +#define VSY_LOW_ACTIVE			(0x00 << 0)
>> +#define HSY_LOW_ACTIVE			(0x01 << 1)
>> +#define HSY_HIGH_ACTIVE			(0x00 << 1)
>> +#define INPUT_MODE_YUV			(0x00 << 2)
>> +#define INPUT_MODE_PAL			(0x02 << 2)
>> +#define INPUT_MODE_NTSC			(0x03 << 2)
>> +#define INPUT_MODE_BT1120		(0x07 << 2)
>> +#define INPUT_MODE_RAW			(0x04 << 2)
>> +#define INPUT_MODE_JPEG			(0x05 << 2)
>> +#define INPUT_MODE_MIPI			(0x06 << 2)
>> +#define YUV_INPUT_ORDER_UYVY		(0x00 << 5)
>> +#define YUV_INPUT_ORDER_YVYU		(0x01 << 5)
>> +#define YUV_INPUT_ORDER_VYUY		(0x10 << 5)
>> +#define YUV_INPUT_ORDER_YUYV		(0x03 << 5)
>> +#define YUV_INPUT_422			(0x00 << 7)
>> +#define YUV_INPUT_420			(0x01 << 7)
>> +#define INPUT_420_ORDER_EVEN		(0x00 << 8)
>> +#define INPUT_420_ORDER_ODD		(0x01 << 8)
>> +#define CCIR_INPUT_ORDER_ODD		(0x00 << 9)
>> +#define CCIR_INPUT_ORDER_EVEN		(0x01 << 9)
>> +#define RAW_DATA_WIDTH_8		(0x00 << 11)
>> +#define RAW_DATA_WIDTH_10		(0x01 << 11)
>> +#define RAW_DATA_WIDTH_12		(0x02 << 11)
>> +#define YUV_OUTPUT_422			(0x00 << 16)
>> +#define YUV_OUTPUT_420			(0x01 << 16)
>> +#define OUTPUT_420_ORDER_EVEN		(0x00 << 17)
>> +#define OUTPUT_420_ORDER_ODD		(0x01 << 17)
>> +#define RAWD_DATA_LITTLE_ENDIAN		(0x00 << 18)
>> +#define RAWD_DATA_BIG_ENDIAN		(0x01 << 18)
>> +#define UV_STORAGE_ORDER_UVUV		(0x00 << 19)
>> +#define UV_STORAGE_ORDER_VUVU		(0x01 << 19)
>> +#define BT1120_CLOCK_SINGLE_EDGES	(0x00 << 24)
>> +#define BT1120_CLOCK_DOUBLE_EDGES	(0x01 << 24)
>> +#define BT1120_TRANSMIT_INTERFACE	(0x00 << 25)
>> +#define BT1120_TRANSMIT_PROGRESS	(0x01 << 25)
>> +#define BT1120_YC_SWAP			(0x01 << 26)
>> +
>> +/* CIF_SCL_CTRL */
>> +#define ENABLE_SCL_DOWN			(0x01 << 0)
>> +#define DISABLE_SCL_DOWN		(0x00 << 0)
>> +#define ENABLE_SCL_UP			(0x01 << 1)
>> +#define DISABLE_SCL_UP			(0x00 << 1)
>> +#define ENABLE_YUV_16BIT_BYPASS		(0x01 << 4)
>> +#define DISABLE_YUV_16BIT_BYPASS	(0x00 << 4)
>> +#define ENABLE_RAW_16BIT_BYPASS		(0x01 << 5)
>> +#define DISABLE_RAW_16BIT_BYPASS	(0x00 << 5)
>> +#define ENABLE_32BIT_BYPASS		(0x01 << 6)
>> +#define DISABLE_32BIT_BYPASS		(0x00 << 6)
>> +
>> +/* CIF_INTSTAT */
>> +#define CIF_F0_READY			(0x01 << 0)
>> +#define CIF_F1_READY			(0x01 << 1)
>> +
>> +/* CIF CROP */
>> +#define CIF_CROP_Y_SHIFT		16
>> +#define CIF_CROP_X_SHIFT		0
>> +
>> +/* CIF_CSI_ID_CTRL0 */
>> +#define CSI_DISABLE_CAPTURE		(0x0 << 0)
>> +#define CSI_ENABLE_CAPTURE		(0x1 << 0)
>> +#define CSI_WRDDR_TYPE_RAW8		(0x0 << 1)
>> +#define CSI_WRDDR_TYPE_RAW10		(0x1 << 1)
>> +#define CSI_WRDDR_TYPE_RAW12		(0x2 << 1)
>> +#define CSI_WRDDR_TYPE_RGB888		(0x3 << 1)
>> +#define CSI_WRDDR_TYPE_YUV422		(0x4 << 1)
>> +#define CSI_DISABLE_COMMAND_MODE	(0x0 << 4)
>> +#define CSI_ENABLE_COMMAND_MODE		(0x1 << 4)
>> +#define CSI_DISABLE_CROP		(0x0 << 5)
>> +#define CSI_ENABLE_CROP			(0x1 << 5)
>> +
>> +/* CIF_CSI_INTEN */
>> +#define CSI_FRAME0_START_INTEN(id)	(0x1 << ((id) * 2))
>> +#define CSI_FRAME1_START_INTEN(id)	(0x1 << ((id) * 2 + 1))
>> +#define CSI_FRAME0_END_INTEN(id)	(0x1 << ((id) * 2 + 8))
>> +#define CSI_FRAME1_END_INTEN(id)	(0x1 << ((id) * 2 + 9))
>> +#define CSI_DMA_Y_FIFO_OVERFLOW_INTEN	(0x1 << 16)
>> +#define CSI_DMA_UV_FIFO_OVERFLOW_INTEN	(0x1 << 17)
>> +#define CSI_CONFIG_FIFO_OVERFLOW_INTEN	(0x1 << 18)
>> +#define CSI_BANDWIDTH_LACK_INTEN	(0x1 << 19)
>> +#define CSI_RX_FIFO_OVERFLOW_INTEN	(0x1 << 20)
>> +#define CSI_ALL_FRAME_START_INTEN	(0xff << 0)
>> +#define CSI_ALL_FRAME_END_INTEN		(0xff << 8)
>> +#define CSI_ALL_ERROR_INTEN		(0x1f << 16)
>> +
>> +/* CIF_CSI_INTSTAT */
>> +#define CSI_FRAME0_START_ID0		(0x1 << 0)
>> +#define CSI_FRAME1_START_ID0		(0x1 << 1)
>> +#define CSI_FRAME0_START_ID1		(0x1 << 2)
>> +#define CSI_FRAME1_START_ID1		(0x1 << 3)
>> +#define CSI_FRAME0_START_ID2		(0x1 << 4)
>> +#define CSI_FRAME1_START_ID2		(0x1 << 5)
>> +#define CSI_FRAME0_START_ID3		(0x1 << 6)
>> +#define CSI_FRAME1_START_ID3		(0x1 << 7)
>> +#define CSI_FRAME0_END_ID0		(0x1 << 8)
>> +#define CSI_FRAME1_END_ID0		(0x1 << 9)
>> +#define CSI_FRAME0_END_ID1		(0x1 << 10)
>> +#define CSI_FRAME1_END_ID1		(0x1 << 11)
>> +#define CSI_FRAME0_END_ID2		(0x1 << 12)
>> +#define CSI_FRAME1_END_ID2		(0x1 << 13)
>> +#define CSI_FRAME0_END_ID3		(0x1 << 14)
>> +#define CSI_FRAME1_END_ID3		(0x1 << 15)
>> +#define CSI_DMA_Y_FIFO_OVERFLOW		(0x1 << 16)
>> +#define CSI_DMA_UV_FIFO_OVERFLOW	(0x1 << 17)
>> +#define CSI_CONFIG_FIFO_OVERFLOW	(0x1 << 18)
>> +#define CSI_BANDWIDTH_LACK		(0x1 << 19)
>> +#define CSI_RX_FIFO_OVERFLOW		(0x1 << 20)
>> +
>> +#define CSI_FIFO_OVERFLOW	(CSI_DMA_Y_FIFO_OVERFLOW |	\
>> +				 CSI_DMA_UV_FIFO_OVERFLOW |	\
>> +				 CSI_CONFIG_FIFO_OVERFLOW |	\
>> +				 CSI_RX_FIFO_OVERFLOW)
>> +
>> +/* CSI Host Registers Define */
>> +#define CSIHOST_N_LANES		0x04
>> +#define CSIHOST_PHY_RSTZ	0x0c
>> +#define CSIHOST_RESETN		0x10
>> +#define CSIHOST_ERR1		0x20
>> +#define CSIHOST_ERR2		0x24
>> +#define CSIHOST_MSK1		0x28
>> +#define CSIHOST_MSK2		0x2c
>> +#define CSIHOST_CONTROL		0x40
>> +
>> +#define SW_CPHY_EN(x)		((x) << 0)
>> +#define SW_DSI_EN(x)		((x) << 4)
>> +#define SW_DATATYPE_FS(x)	((x) << 8)
>> +#define SW_DATATYPE_FE(x)	((x) << 14)
>> +#define SW_DATATYPE_LS(x)	((x) << 20)
>> +#define SW_DATATYPE_LE(x)	((x) << 26)
>> +
>> +#endif
>>   
>
>Regards,
>
>	Hans



-- 
Maxime Chevallier, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
