Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CB785E04
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 11:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4vvgGHLTuQ0qteEZMyLFM1O1xkAERQfQl/KXsfnyXC0=; b=N839eQjCyvRp2R
	ElYGO3XNuhWzCVbn5yJm5oZY2Kwu+Cm8pZG6vH607SS8MKV8pTYZ42thxp+8/N3ACmRbXIyjLBqS8
	IokGepWy/NiMdoABu4OCShs8hMlcuEJdBtp38BIaWtYtVlPY2HSk9YZ/aGR+/nilymNche30TkgCD
	hb0NTOzyUhjlttoY+VCLMMEMMFNrF+ioPyNRspiHL8jj/FX4PdENtLFszYni+DBPtbqkbBh+whDyp
	bEp++dwJ4l2Aqjjel5czaNHdtDobs5HjhjCwk+rRGSMZNZcNKmwxjD7QC57/MDSONIAIV47Evx4rJ
	Mg7vDJs134A2hOu+pUOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveXV-00065u-NS; Thu, 08 Aug 2019 09:16:53 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveWI-0004Lb-9P; Thu, 08 Aug 2019 09:15:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 02:13:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="186290397"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 02:13:31 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8F236203D9; Thu,  8 Aug 2019 12:14:07 +0300 (EEST)
Date: Thu, 8 Aug 2019 12:14:07 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Message-ID: <20190808091406.GQ21370@paasikivi.fi.intel.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-6-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_021538_472396_6F6CA3AB 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, Allon Huang <allon.huang@rock-chips.com>,
 Jacob Chen <cc@rock-chips.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

On Tue, Jul 30, 2019 at 03:42:47PM -0300, Helen Koike wrote:
> From: Jacob Chen <jacob2.chen@rock-chips.com>
> 
> Add the subdev driver for rockchip isp1.
> 
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Yichong Zhong <zyc@rock-chips.com>
> Signed-off-by: Jacob Chen <cc@rock-chips.com>
> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Signed-off-by: Allon Huang <allon.huang@rock-chips.com>
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> [fixed unknown entity type / switched to PIXEL_RATE]
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> [update for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> Changes in v8: None
> Changes in v7:
> - fixed warning because of unknown entity type
> - fixed v4l2-compliance errors regarding rkisp1 formats, try formats
> and default values
> - fix typo riksp1/rkisp1
> - redesign: remove mipi/csi subdevice, sensors connect directly to the
> isp subdevice in the media topology now. As a consequence, remove the
> hack in mipidphy_g_mbus_config() where information from the sensor was
> being propagated through the topology.
> - From the old dphy:
>         * cache get_remote_sensor() in s_stream
>         * use V4L2_CID_PIXEL_RATE instead of V4L2_CID_LINK_FREQ
> - Replace stream state with a boolean
> - code styling and checkpatch fixes
> - fix stop_stream (return after calling stop, do not reenable the stream)
> - fix rkisp1_isp_sd_get_selection when V4L2_SUBDEV_FORMAT_TRY is set
> - fix get format in output (isp_sd->out_fmt.mbus_code was being ignored)
> - s/intput/input
> - remove #define sd_to_isp_sd(_sd), add a static inline as it will be
> reused by the capture
> 
>  drivers/media/platform/rockchip/isp1/rkisp1.c | 1286 +++++++++++++++++
>  drivers/media/platform/rockchip/isp1/rkisp1.h |  111 ++
>  2 files changed, 1397 insertions(+)
>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.c
>  create mode 100644 drivers/media/platform/rockchip/isp1/rkisp1.h
> 
> diff --git a/drivers/media/platform/rockchip/isp1/rkisp1.c b/drivers/media/platform/rockchip/isp1/rkisp1.c
> new file mode 100644
> index 000000000000..6d0c0ffb5e03
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/isp1/rkisp1.c
> @@ -0,0 +1,1286 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Rockchip isp1 driver
> + *
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <linux/iopoll.h>
> +#include <linux/phy/phy.h>
> +#include <linux/phy/phy-mipi-dphy.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/videodev2.h>
> +#include <linux/vmalloc.h>
> +#include <media/v4l2-event.h>
> +
> +#include "common.h"
> +#include "regs.h"
> +
> +#define CIF_ISP_INPUT_W_MAX		4032
> +#define CIF_ISP_INPUT_H_MAX		3024
> +#define CIF_ISP_INPUT_W_MIN		32
> +#define CIF_ISP_INPUT_H_MIN		32
> +#define CIF_ISP_OUTPUT_W_MAX		CIF_ISP_INPUT_W_MAX
> +#define CIF_ISP_OUTPUT_H_MAX		CIF_ISP_INPUT_H_MAX
> +#define CIF_ISP_OUTPUT_W_MIN		CIF_ISP_INPUT_W_MIN
> +#define CIF_ISP_OUTPUT_H_MIN		CIF_ISP_INPUT_H_MIN
> +
> +/*
> + * NOTE: MIPI controller and input MUX are also configured in this file,
> + * because ISP Subdev is not only describe ISP submodule(input size,format,
> + * output size, format), but also a virtual route device.
> + */
> +
> +/*
> + * There are many variables named with format/frame in below code,
> + * please see here for their meaning.
> + *
> + * Cropping regions of ISP
> + *
> + * +---------------------------------------------------------+
> + * | Sensor image                                            |
> + * | +---------------------------------------------------+   |
> + * | | ISP_ACQ (for black level)                         |   |
> + * | | in_frm                                            |   |
> + * | | +--------------------------------------------+    |   |
> + * | | |    ISP_OUT                                 |    |   |
> + * | | |    in_crop                                 |    |   |
> + * | | |    +---------------------------------+     |    |   |
> + * | | |    |   ISP_IS                        |     |    |   |
> + * | | |    |   rkisp1_isp_subdev: out_crop   |     |    |   |
> + * | | |    +---------------------------------+     |    |   |
> + * | | +--------------------------------------------+    |   |
> + * | +---------------------------------------------------+   |
> + * +---------------------------------------------------------+
> + */
> +
> +static inline struct rkisp1_device *sd_to_isp_dev(struct v4l2_subdev *sd)
> +{
> +	return container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
> +}
> +
> +/* Get sensor by enabled media link */
> +static struct v4l2_subdev *get_remote_sensor(struct v4l2_subdev *sd)
> +{
> +	struct media_pad *local, *remote;
> +	struct media_entity *sensor_me;
> +
> +	local = &sd->entity.pads[RKISP1_ISP_PAD_SINK];
> +	remote = media_entity_remote_pad(local);
> +	if (!remote) {
> +		v4l2_warn(sd, "No link between isp and sensor\n");
> +		return NULL;
> +	}
> +
> +	sensor_me = media_entity_remote_pad(local)->entity;
> +	return media_entity_to_v4l2_subdev(sensor_me);
> +}
> +
> +static struct rkisp1_sensor *sd_to_sensor(struct rkisp1_device *dev,
> +					       struct v4l2_subdev *sd)

Indentation.

> +{
> +	struct rkisp1_sensor *sensor;
> +
> +	list_for_each_entry(sensor, &dev->sensors, list)
> +		if (sensor->sd == sd)
> +			return sensor;
> +
> +	return NULL;
> +}
> +
> +/****************  register operations ****************/
> +
> +/*
> + * Image Stabilization.
> + * This should only be called when configuring CIF
> + * or at the frame end interrupt
> + */
> +static void rkisp1_config_ism(struct rkisp1_device *dev)
> +{
> +	void __iomem *base = dev->base_addr;
> +	struct v4l2_rect *out_crop = &dev->isp_sdev.out_crop;
> +	u32 val;
> +
> +	writel(0, base + CIF_ISP_IS_RECENTER);
> +	writel(0, base + CIF_ISP_IS_MAX_DX);
> +	writel(0, base + CIF_ISP_IS_MAX_DY);
> +	writel(0, base + CIF_ISP_IS_DISPLACE);
> +	writel(out_crop->left, base + CIF_ISP_IS_H_OFFS);
> +	writel(out_crop->top, base + CIF_ISP_IS_V_OFFS);
> +	writel(out_crop->width, base + CIF_ISP_IS_H_SIZE);
> +	writel(out_crop->height, base + CIF_ISP_IS_V_SIZE);
> +
> +	/* IS(Image Stabilization) is always on, working as output crop */
> +	writel(1, base + CIF_ISP_IS_CTRL);
> +	val = readl(base + CIF_ISP_CTRL);
> +	val |= CIF_ISP_CTRL_ISP_CFG_UPD;
> +	writel(val, base + CIF_ISP_CTRL);
> +}
> +
> +/*
> + * configure isp blocks with input format, size......
> + */
> +static int rkisp1_config_isp(struct rkisp1_device *dev)
> +{
> +	u32 isp_ctrl = 0, irq_mask = 0, acq_mult = 0, signal = 0;
> +	struct v4l2_rect *out_crop, *in_crop;
> +	void __iomem *base = dev->base_addr;
> +	struct v4l2_mbus_framefmt *in_frm;
> +	struct ispsd_out_fmt *out_fmt;
> +	struct rkisp1_sensor *sensor;
> +	struct ispsd_in_fmt *in_fmt;
> +
> +	sensor = dev->active_sensor;
> +	in_frm = &dev->isp_sdev.in_frm;
> +	in_fmt = &dev->isp_sdev.in_fmt;
> +	out_fmt = &dev->isp_sdev.out_fmt;
> +	out_crop = &dev->isp_sdev.out_crop;
> +	in_crop = &dev->isp_sdev.in_crop;
> +
> +	if (in_fmt->fmt_type == FMT_BAYER) {
> +		acq_mult = 1;
> +		if (out_fmt->fmt_type == FMT_BAYER) {
> +			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +				isp_ctrl =
> +					CIF_ISP_CTRL_ISP_MODE_RAW_PICT_ITU656;
> +			else
> +				isp_ctrl =
> +					CIF_ISP_CTRL_ISP_MODE_RAW_PICT;
> +		} else {
> +			writel(CIF_ISP_DEMOSAIC_TH(0xc),
> +			       base + CIF_ISP_DEMOSAIC);
> +
> +			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +				isp_ctrl = CIF_ISP_CTRL_ISP_MODE_BAYER_ITU656;
> +			else
> +				isp_ctrl = CIF_ISP_CTRL_ISP_MODE_BAYER_ITU601;
> +		}
> +	} else if (in_fmt->fmt_type == FMT_YUV) {
> +		acq_mult = 2;
> +		if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +			isp_ctrl = CIF_ISP_CTRL_ISP_MODE_ITU601;
> +		} else {
> +			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +				isp_ctrl = CIF_ISP_CTRL_ISP_MODE_ITU656;
> +			else
> +				isp_ctrl = CIF_ISP_CTRL_ISP_MODE_ITU601;
> +
> +		}
> +
> +		irq_mask |= CIF_ISP_DATA_LOSS;
> +	}
> +
> +	/* Set up input acquisition properties */
> +	if (sensor->mbus.type == V4L2_MBUS_BT656 ||
> +	    sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> +		if (sensor->mbus.flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> +			signal = CIF_ISP_ACQ_PROP_POS_EDGE;
> +	}
> +
> +	if (sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> +		if (sensor->mbus.flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
> +			signal |= CIF_ISP_ACQ_PROP_VSYNC_LOW;
> +
> +		if (sensor->mbus.flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
> +			signal |= CIF_ISP_ACQ_PROP_HSYNC_LOW;
> +	}
> +
> +	writel(isp_ctrl, base + CIF_ISP_CTRL);
> +	writel(signal | in_fmt->yuv_seq |
> +	       CIF_ISP_ACQ_PROP_BAYER_PAT(in_fmt->bayer_pat) |
> +	       CIF_ISP_ACQ_PROP_FIELD_SEL_ALL, base + CIF_ISP_ACQ_PROP);
> +	writel(0, base + CIF_ISP_ACQ_NR_FRAMES);
> +
> +	/* Acquisition Size */
> +	writel(0, base + CIF_ISP_ACQ_H_OFFS);
> +	writel(0, base + CIF_ISP_ACQ_V_OFFS);
> +	writel(acq_mult * in_frm->width, base + CIF_ISP_ACQ_H_SIZE);
> +	writel(in_frm->height, base + CIF_ISP_ACQ_V_SIZE);
> +
> +	/* ISP Out Area */
> +	writel(in_crop->left, base + CIF_ISP_OUT_H_OFFS);
> +	writel(in_crop->top, base + CIF_ISP_OUT_V_OFFS);
> +	writel(in_crop->width, base + CIF_ISP_OUT_H_SIZE);
> +	writel(in_crop->height, base + CIF_ISP_OUT_V_SIZE);
> +
> +	/* interrupt mask */
> +	irq_mask |= CIF_ISP_FRAME | CIF_ISP_V_START | CIF_ISP_PIC_SIZE_ERROR |
> +		    CIF_ISP_FRAME_IN;
> +	writel(irq_mask, base + CIF_ISP_IMSC);
> +
> +	if (out_fmt->fmt_type == FMT_BAYER)
> +		rkisp1_params_disable_isp(&dev->params_vdev);
> +	else
> +		rkisp1_params_configure_isp(&dev->params_vdev, in_fmt,
> +					    dev->isp_sdev.quantization);
> +
> +	return 0;
> +}
> +
> +static int rkisp1_config_dvp(struct rkisp1_device *dev)
> +{
> +	struct ispsd_in_fmt *in_fmt = &dev->isp_sdev.in_fmt;
> +	void __iomem *base = dev->base_addr;
> +	u32 val, input_sel;
> +
> +	switch (in_fmt->bus_width) {
> +	case 8:
> +		input_sel = CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
> +		break;
> +	case 10:
> +		input_sel = CIF_ISP_ACQ_PROP_IN_SEL_10B_ZERO;
> +		break;
> +	case 12:
> +		input_sel = CIF_ISP_ACQ_PROP_IN_SEL_12B;
> +		break;
> +	default:
> +		v4l2_err(&dev->v4l2_dev, "Invalid bus width\n");
> +		return -EINVAL;
> +	}
> +
> +	val = readl(base + CIF_ISP_ACQ_PROP);
> +	writel(val | input_sel, base + CIF_ISP_ACQ_PROP);
> +
> +	return 0;
> +}
> +
> +static int rkisp1_config_mipi(struct rkisp1_device *dev)
> +{
> +	struct ispsd_in_fmt *in_fmt = &dev->isp_sdev.in_fmt;
> +	struct rkisp1_sensor *sensor = dev->active_sensor;
> +	void __iomem *base = dev->base_addr;
> +	unsigned int lanes;
> +	u32 mipi_ctrl;
> +
> +	/*
> +	 * sensor->mbus is set in isp or d-phy notifier_bound function
> +	 */
> +	switch (sensor->mbus.flags & V4L2_MBUS_CSI2_LANES) {
> +	case V4L2_MBUS_CSI2_4_LANE:
> +		lanes = 4;
> +		break;
> +	case V4L2_MBUS_CSI2_3_LANE:
> +		lanes = 3;
> +		break;
> +	case V4L2_MBUS_CSI2_2_LANE:
> +		lanes = 2;
> +		break;
> +	case V4L2_MBUS_CSI2_1_LANE:
> +		lanes = 1;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	mipi_ctrl = CIF_MIPI_CTRL_NUM_LANES(lanes - 1) |
> +		    CIF_MIPI_CTRL_SHUTDOWNLANES(0xf) |
> +		    CIF_MIPI_CTRL_ERR_SOT_SYNC_HS_SKIP |
> +		    CIF_MIPI_CTRL_CLOCKLANE_ENA;
> +
> +	writel(mipi_ctrl, base + CIF_MIPI_CTRL);
> +
> +	/* Configure Data Type and Virtual Channel */
> +	writel(CIF_MIPI_DATA_SEL_DT(in_fmt->mipi_dt) | CIF_MIPI_DATA_SEL_VC(0),
> +	       base + CIF_MIPI_IMG_DATA_SEL);
> +
> +	/* Clear MIPI interrupts */
> +	writel(~0, base + CIF_MIPI_ICR);
> +	/*
> +	 * Disable CIF_MIPI_ERR_DPHY interrupt here temporary for
> +	 * isp bus may be dead when switch isp.
> +	 */
> +	writel(CIF_MIPI_FRAME_END | CIF_MIPI_ERR_CSI | CIF_MIPI_ERR_DPHY |
> +	       CIF_MIPI_SYNC_FIFO_OVFLW(0x03) | CIF_MIPI_ADD_DATA_OVFLW,
> +	       base + CIF_MIPI_IMSC);
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev, "\n  MIPI_CTRL 0x%08x\n"
> +		 "  MIPI_IMG_DATA_SEL 0x%08x\n"
> +		 "  MIPI_STATUS 0x%08x\n"
> +		 "  MIPI_IMSC 0x%08x\n",
> +		 readl(base + CIF_MIPI_CTRL),
> +		 readl(base + CIF_MIPI_IMG_DATA_SEL),
> +		 readl(base + CIF_MIPI_STATUS),
> +		 readl(base + CIF_MIPI_IMSC));
> +
> +	return 0;
> +}
> +
> +/* Configure MUX */
> +static int rkisp1_config_path(struct rkisp1_device *dev)
> +{
> +	struct rkisp1_sensor *sensor = dev->active_sensor;
> +	u32 dpcl = readl(dev->base_addr + CIF_VI_DPCL);
> +	int ret = 0;
> +
> +	if (sensor->mbus.type == V4L2_MBUS_BT656 ||
> +	    sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> +		ret = rkisp1_config_dvp(dev);
> +		dpcl |= CIF_VI_DPCL_IF_SEL_PARALLEL;
> +	} else if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +		ret = rkisp1_config_mipi(dev);
> +		dpcl |= CIF_VI_DPCL_IF_SEL_MIPI;
> +	}
> +
> +	writel(dpcl, dev->base_addr + CIF_VI_DPCL);
> +
> +	return ret;
> +}
> +
> +/* Hareware configure Entry */
> +static int rkisp1_config_cif(struct rkisp1_device *dev)
> +{
> +	u32 cif_id;
> +	int ret;
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		 "SP streaming = %d, MP streaming = %d\n",
> +		 dev->stream[RKISP1_STREAM_SP].streaming,
> +		 dev->stream[RKISP1_STREAM_MP].streaming);
> +
> +	cif_id = readl(dev->base_addr + CIF_VI_ID);
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev, "CIF_ID 0x%08x\n", cif_id);
> +
> +	ret = rkisp1_config_isp(dev);
> +	if (ret < 0)
> +		return ret;
> +	ret = rkisp1_config_path(dev);
> +	if (ret < 0)
> +		return ret;
> +	rkisp1_config_ism(dev);
> +
> +	return 0;
> +}
> +
> +/* Mess register operations to stop isp */
> +static int rkisp1_isp_stop(struct rkisp1_device *dev)
> +{
> +	void __iomem *base = dev->base_addr;
> +	u32 val;
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		 "SP streaming = %d, MP streaming = %d\n",
> +		 dev->stream[RKISP1_STREAM_SP].streaming,
> +		 dev->stream[RKISP1_STREAM_MP].streaming);
> +
> +	/*
> +	 * ISP(mi) stop in mi frame end -> Stop ISP(mipi) ->
> +	 * Stop ISP(isp) ->wait for ISP isp off
> +	 */
> +	/* stop and clear MI, MIPI, and ISP interrupts */
> +	writel(0, base + CIF_MIPI_IMSC);
> +	writel(~0, base + CIF_MIPI_ICR);
> +
> +	writel(0, base + CIF_ISP_IMSC);
> +	writel(~0, base + CIF_ISP_ICR);
> +
> +	writel(0, base + CIF_MI_IMSC);
> +	writel(~0, base + CIF_MI_ICR);
> +	val = readl(base + CIF_MIPI_CTRL);
> +	writel(val & (~CIF_MIPI_CTRL_OUTPUT_ENA), base + CIF_MIPI_CTRL);
> +	/* stop ISP */
> +	val = readl(base + CIF_ISP_CTRL);
> +	val &= ~(CIF_ISP_CTRL_ISP_INFORM_ENABLE | CIF_ISP_CTRL_ISP_ENABLE);
> +	writel(val, base + CIF_ISP_CTRL);
> +
> +	val = readl(base + CIF_ISP_CTRL);
> +	writel(val | CIF_ISP_CTRL_ISP_CFG_UPD, base + CIF_ISP_CTRL);
> +
> +	readx_poll_timeout(readl, base + CIF_ISP_RIS,
> +			   val, val & CIF_ISP_OFF, 20, 100);
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		"streaming(MP:%d, SP:%d), MI_CTRL:%x, ISP_CTRL:%x, MIPI_CTRL:%x\n",
> +		 dev->stream[RKISP1_STREAM_SP].streaming,
> +		 dev->stream[RKISP1_STREAM_MP].streaming,
> +		 readl(base + CIF_MI_CTRL),
> +		 readl(base + CIF_ISP_CTRL),
> +		 readl(base + CIF_MIPI_CTRL));
> +
> +	writel(CIF_IRCL_MIPI_SW_RST | CIF_IRCL_ISP_SW_RST, base + CIF_IRCL);
> +	writel(0x0, base + CIF_IRCL);
> +
> +	return 0;
> +}
> +
> +/* Mess register operations to start isp */
> +static int rkisp1_isp_start(struct rkisp1_device *dev)
> +{
> +	struct rkisp1_sensor *sensor = dev->active_sensor;
> +	void __iomem *base = dev->base_addr;
> +	u32 val;
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		 "SP streaming = %d, MP streaming = %d\n",
> +		 dev->stream[RKISP1_STREAM_SP].streaming,
> +		 dev->stream[RKISP1_STREAM_MP].streaming);
> +
> +	/* Activate MIPI */
> +	if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +		val = readl(base + CIF_MIPI_CTRL);
> +		writel(val | CIF_MIPI_CTRL_OUTPUT_ENA, base + CIF_MIPI_CTRL);
> +	}
> +	/* Activate ISP */
> +	val = readl(base + CIF_ISP_CTRL);
> +	val |= CIF_ISP_CTRL_ISP_CFG_UPD | CIF_ISP_CTRL_ISP_ENABLE |
> +	       CIF_ISP_CTRL_ISP_INFORM_ENABLE;
> +	writel(val, base + CIF_ISP_CTRL);
> +
> +	/* XXX: Is the 1000us too long?
> +	 * CIF spec says to wait for sufficient time after enabling
> +	 * the MIPI interface and before starting the sensor output.
> +	 */
> +	usleep_range(1000, 1200);
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		 "SP streaming = %d, MP streaming = %d MI_CTRL 0x%08x\n"
> +		 "  ISP_CTRL 0x%08x MIPI_CTRL 0x%08x\n",
> +		 dev->stream[RKISP1_STREAM_SP].streaming,
> +		 dev->stream[RKISP1_STREAM_MP].streaming,
> +		 readl(base + CIF_MI_CTRL),
> +		 readl(base + CIF_ISP_CTRL),
> +		 readl(base + CIF_MIPI_CTRL));
> +
> +	return 0;
> +}
> +
> +static void rkisp1_config_clk(struct rkisp1_device *dev)
> +{
> +	u32 val = CIF_ICCL_ISP_CLK | CIF_ICCL_CP_CLK | CIF_ICCL_MRSZ_CLK |
> +		  CIF_ICCL_SRSZ_CLK | CIF_ICCL_JPEG_CLK | CIF_ICCL_MI_CLK |
> +		  CIF_ICCL_IE_CLK | CIF_ICCL_MIPI_CLK | CIF_ICCL_DCROP_CLK;
> +
> +	writel(val, dev->base_addr + CIF_ICCL);
> +}
> +
> +/***************************** isp sub-devs *******************************/
> +
> +static const struct ispsd_in_fmt rkisp1_isp_input_formats[] = {
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW10,
> +		.bayer_pat	= RAW_BGGR,
> +		.bus_width	= 10,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW10,
> +		.bayer_pat	= RAW_RGGB,
> +		.bus_width	= 10,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW10,
> +		.bayer_pat	= RAW_GBRG,
> +		.bus_width	= 10,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW10,
> +		.bayer_pat	= RAW_GRBG,
> +		.bus_width	= 10,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW12,
> +		.bayer_pat	= RAW_RGGB,
> +		.bus_width	= 12,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW12,
> +		.bayer_pat	= RAW_BGGR,
> +		.bus_width	= 12,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW12,
> +		.bayer_pat	= RAW_GBRG,
> +		.bus_width	= 12,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW12,
> +		.bayer_pat	= RAW_GRBG,
> +		.bus_width	= 12,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW8,
> +		.bayer_pat	= RAW_RGGB,
> +		.bus_width	= 8,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW8,
> +		.bayer_pat	= RAW_BGGR,
> +		.bus_width	= 8,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW8,
> +		.bayer_pat	= RAW_GBRG,
> +		.bus_width	= 8,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +		.mipi_dt	= CIF_CSI2_DT_RAW8,
> +		.bayer_pat	= RAW_GRBG,
> +		.bus_width	= 8,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1X16,
> +		.fmt_type	= FMT_YUV,
> +		.mipi_dt	= CIF_CSI2_DT_YUV422_8b,
> +		.yuv_seq	= CIF_ISP_ACQ_PROP_YCBYCR,
> +		.bus_width	= 16,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_YVYU8_1X16,
> +		.fmt_type	= FMT_YUV,
> +		.mipi_dt	= CIF_CSI2_DT_YUV422_8b,
> +		.yuv_seq	= CIF_ISP_ACQ_PROP_YCRYCB,
> +		.bus_width	= 16,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_UYVY8_1X16,
> +		.fmt_type	= FMT_YUV,
> +		.mipi_dt	= CIF_CSI2_DT_YUV422_8b,
> +		.yuv_seq	= CIF_ISP_ACQ_PROP_CBYCRY,
> +		.bus_width	= 16,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_VYUY8_1X16,
> +		.fmt_type	= FMT_YUV,
> +		.mipi_dt	= CIF_CSI2_DT_YUV422_8b,
> +		.yuv_seq	= CIF_ISP_ACQ_PROP_CRYCBY,
> +		.bus_width	= 16,
> +	},
> +};
> +
> +static const struct ispsd_out_fmt rkisp1_isp_output_formats[] = {
> +	{
> +		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8,
> +		.fmt_type	= FMT_YUV,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG12_1X12,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG10_1X10,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SRGGB8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SBGGR8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGBRG8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +	}, {
> +		.mbus_code	= MEDIA_BUS_FMT_SGRBG8_1X8,
> +		.fmt_type	= FMT_BAYER,
> +	},
> +};
> +
> +static const struct ispsd_in_fmt *find_in_fmt(u32 mbus_code)
> +{
> +	unsigned int i, array_size = ARRAY_SIZE(rkisp1_isp_input_formats);

I think it'd be nicer to just use ARRAY_SIZE(...) in the condition. Same
below.

> +	const struct ispsd_in_fmt *fmt;
> +
> +	for (i = 0; i < array_size; i++) {
> +		fmt = &rkisp1_isp_input_formats[i];
> +		if (fmt->mbus_code == mbus_code)
> +			return fmt;
> +	}
> +
> +	return NULL;
> +}
> +
> +static const struct ispsd_out_fmt *find_out_fmt(u32 mbus_code)
> +{
> +	unsigned int i, array_size = ARRAY_SIZE(rkisp1_isp_output_formats);
> +	const struct ispsd_out_fmt *fmt;
> +
> +	for (i = 0; i < array_size; i++) {
> +		fmt = &rkisp1_isp_output_formats[i];
> +		if (fmt->mbus_code == mbus_code)
> +			return fmt;
> +	}
> +
> +	return NULL;
> +}
> +
> +static int rkisp1_isp_sd_enum_mbus_code(struct v4l2_subdev *sd,
> +					struct v4l2_subdev_pad_config *cfg,
> +					struct v4l2_subdev_mbus_code_enum *code)
> +{
> +	unsigned int i = code->index;
> +
> +	if ((code->pad != RKISP1_ISP_PAD_SINK) &&
> +	    (code->pad != RKISP1_ISP_PAD_SOURCE_PATH)) {
> +		if (i > 0)
> +			return -EINVAL;
> +		code->code = MEDIA_BUS_FMT_FIXED;
> +		return 0;
> +	}
> +
> +	if (code->pad == RKISP1_ISP_PAD_SINK) {
> +		if (i >= ARRAY_SIZE(rkisp1_isp_input_formats))
> +			return -EINVAL;
> +		code->code = rkisp1_isp_input_formats[i].mbus_code;
> +	} else {
> +		if (i >= ARRAY_SIZE(rkisp1_isp_output_formats))
> +			return -EINVAL;
> +		code->code = rkisp1_isp_output_formats[i].mbus_code;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rkisp1_isp_sd_init_config(struct v4l2_subdev *sd,
> +				     struct v4l2_subdev_pad_config *cfg)
> +{
> +	struct v4l2_rect *mf_in_crop, *mf_out_crop;
> +	struct v4l2_mbus_framefmt *mf_in, *mf_out;
> +
> +	mf_in = v4l2_subdev_get_try_format(sd, cfg, RKISP1_ISP_PAD_SINK);
> +	mf_in->width = RKISP1_DEFAULT_WIDTH;
> +	mf_in->height = RKISP1_DEFAULT_HEIGHT;
> +	mf_in->field = V4L2_FIELD_NONE;
> +	mf_in->code = rkisp1_isp_input_formats[0].mbus_code;
> +
> +	mf_in_crop = v4l2_subdev_get_try_crop(sd, cfg, RKISP1_ISP_PAD_SINK);
> +	mf_in_crop->width = RKISP1_DEFAULT_WIDTH;
> +	mf_in_crop->height = RKISP1_DEFAULT_HEIGHT;
> +	mf_in_crop->left = 0;
> +	mf_in_crop->top = 0;
> +
> +	mf_out = v4l2_subdev_get_try_format(sd, cfg,
> +					    RKISP1_ISP_PAD_SOURCE_PATH);
> +	*mf_out = *mf_in;
> +	mf_out->code = rkisp1_isp_output_formats[0].mbus_code;
> +	mf_out->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +
> +	mf_out_crop = v4l2_subdev_get_try_crop(sd, cfg,
> +					       RKISP1_ISP_PAD_SOURCE_PATH);
> +	*mf_out_crop = *mf_in_crop;
> +
> +	return 0;
> +}
> +
> +static int rkisp1_isp_sd_get_fmt(struct v4l2_subdev *sd,
> +				 struct v4l2_subdev_pad_config *cfg,
> +				 struct v4l2_subdev_format *fmt)
> +{
> +	struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> +
> +	if ((fmt->pad != RKISP1_ISP_PAD_SINK) &&
> +	    (fmt->pad != RKISP1_ISP_PAD_SOURCE_PATH)) {
> +		fmt->format.code = MEDIA_BUS_FMT_FIXED;
> +		/*
> +		 * NOTE: setting a format here doesn't make much sense
> +		 * but v4l2-compliance complains
> +		 */
> +		fmt->format.width = RKISP1_DEFAULT_WIDTH;
> +		fmt->format.height = RKISP1_DEFAULT_HEIGHT;
> +		fmt->format.field = V4L2_FIELD_NONE;
> +		return 0;
> +	}
> +
> +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> +		mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
> +		fmt->format = *mf;
> +		return 0;
> +	}
> +
> +	if (fmt->pad == RKISP1_ISP_PAD_SINK) {
> +		*mf = isp_sd->in_frm;
> +	} else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_PATH) {
> +		/* format of source pad */
> +		*mf = isp_sd->in_frm;
> +		mf->code = isp_sd->out_fmt.mbus_code;
> +		/* window size of source pad */
> +		mf->width = isp_sd->out_crop.width;
> +		mf->height = isp_sd->out_crop.height;
> +		mf->quantization = isp_sd->quantization;
> +	}
> +	mf->field = V4L2_FIELD_NONE;
> +
> +	return 0;
> +}
> +
> +static void rkisp1_isp_sd_try_fmt(struct v4l2_subdev *sd,
> +				  unsigned int pad,
> +				  struct v4l2_mbus_framefmt *fmt)
> +{
> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> +	const struct ispsd_out_fmt *out_fmt;
> +	const struct ispsd_in_fmt *in_fmt;
> +
> +	switch (pad) {
> +	case RKISP1_ISP_PAD_SINK:
> +		in_fmt = find_in_fmt(fmt->code);
> +		if (in_fmt)
> +			fmt->code = in_fmt->mbus_code;
> +		else
> +			fmt->code = MEDIA_BUS_FMT_SRGGB10_1X10;
> +		fmt->width  = clamp_t(u32, fmt->width, CIF_ISP_INPUT_W_MIN,
> +				      CIF_ISP_INPUT_W_MAX);
> +		fmt->height = clamp_t(u32, fmt->height, CIF_ISP_INPUT_H_MIN,
> +				      CIF_ISP_INPUT_H_MAX);
> +		break;
> +	case RKISP1_ISP_PAD_SOURCE_PATH:
> +		out_fmt = find_out_fmt(fmt->code);
> +		if (out_fmt)
> +			fmt->code = out_fmt->mbus_code;
> +		else
> +			fmt->code = rkisp1_isp_output_formats[0].mbus_code;
> +		/* window size is set in s_selection */
> +		fmt->width  = isp_sd->out_crop.width;
> +		fmt->height = isp_sd->out_crop.height;
> +		/* full range by default */
> +		if (!fmt->quantization)
> +			fmt->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +		break;
> +	}
> +
> +	fmt->field = V4L2_FIELD_NONE;
> +}
> +
> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> +				 struct v4l2_subdev_pad_config *cfg,
> +				 struct v4l2_subdev_format *fmt)
> +{
> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> +

Note that for sub-device nodes, the driver is itself responsible for
serialising the access to its data structures.

> +	if ((fmt->pad != RKISP1_ISP_PAD_SINK) &&
> +	    (fmt->pad != RKISP1_ISP_PAD_SOURCE_PATH))
> +		return rkisp1_isp_sd_get_fmt(sd, cfg, fmt);
> +
> +	rkisp1_isp_sd_try_fmt(sd, fmt->pad, mf);
> +
> +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
> +		struct v4l2_mbus_framefmt *try_mf;
> +
> +		try_mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
> +		*try_mf = *mf;
> +		return 0;
> +	}
> +
> +	if (fmt->pad == RKISP1_ISP_PAD_SINK) {
> +		const struct ispsd_in_fmt *in_fmt;
> +
> +		in_fmt = find_in_fmt(mf->code);
> +		isp_sd->in_fmt = *in_fmt;
> +		isp_sd->in_frm = *mf;
> +	} else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_PATH) {
> +		const struct ispsd_out_fmt *out_fmt;
> +
> +		/* Ignore width/height */
> +		out_fmt = find_out_fmt(mf->code);
> +		isp_sd->out_fmt = *out_fmt;
> +		/*
> +		 * It is quantization for output,
> +		 * isp use bt601 limit-range in internal
> +		 */
> +		isp_sd->quantization = mf->quantization;
> +	}
> +
> +	return 0;
> +}
> +
> +static void rkisp1_isp_sd_try_crop(struct v4l2_subdev *sd,
> +				  struct v4l2_subdev_pad_config *cfg,
> +				  struct v4l2_subdev_selection *sel)
> +{
> +	struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> +	struct v4l2_mbus_framefmt in_frm = isp_sd->in_frm;
> +	struct v4l2_rect in_crop = isp_sd->in_crop;
> +	struct v4l2_rect *input = &sel->r;
> +
> +	if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
> +		in_frm = *v4l2_subdev_get_try_format(sd, cfg,
> +						     RKISP1_ISP_PAD_SINK);
> +		in_crop = *v4l2_subdev_get_try_crop(sd, cfg,
> +						    RKISP1_ISP_PAD_SINK);
> +	}
> +
> +	input->left = ALIGN(input->left, 2);
> +	input->width = ALIGN(input->width, 2);
> +
> +	if (sel->pad == RKISP1_ISP_PAD_SINK) {
> +		input->left = clamp_t(u32, input->left, 0, in_frm.width);
> +		input->top = clamp_t(u32, input->top, 0, in_frm.height);
> +		input->width = clamp_t(u32, input->width, CIF_ISP_INPUT_W_MIN,
> +				       in_frm.width - input->left);
> +		input->height = clamp_t(u32, input->height,
> +					CIF_ISP_INPUT_H_MIN,
> +					in_frm.height - input->top);
> +	} else if (sel->pad == RKISP1_ISP_PAD_SOURCE_PATH) {
> +		input->left = clamp_t(u32, input->left, 0, in_crop.width);
> +		input->top = clamp_t(u32, input->top, 0, in_crop.height);
> +		input->width = clamp_t(u32, input->width, CIF_ISP_OUTPUT_W_MIN,
> +				       in_crop.width - input->left);
> +		input->height = clamp_t(u32, input->height,
> +					CIF_ISP_OUTPUT_H_MIN,
> +					in_crop.height - input->top);
> +	}
> +}
> +
> +static int rkisp1_isp_sd_get_selection(struct v4l2_subdev *sd,
> +				       struct v4l2_subdev_pad_config *cfg,
> +				       struct v4l2_subdev_selection *sel)
> +{
> +	struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> +	struct v4l2_mbus_framefmt *frm;
> +	struct v4l2_rect *rect;
> +
> +	if (sel->pad != RKISP1_ISP_PAD_SOURCE_PATH &&
> +	    sel->pad != RKISP1_ISP_PAD_SINK)
> +		return -EINVAL;
> +
> +	switch (sel->target) {
> +	case V4L2_SEL_TGT_CROP_BOUNDS:
> +		if (sel->pad == RKISP1_ISP_PAD_SINK) {
> +			if (sel->which == V4L2_SUBDEV_FORMAT_TRY)
> +				frm = v4l2_subdev_get_try_format(sd, cfg,
> +								 sel->pad);
> +			else
> +				frm = &isp_sd->in_frm;
> +
> +			sel->r.height = frm->height;
> +			sel->r.width = frm->width;
> +			sel->r.left = 0;
> +			sel->r.top = 0;
> +		} else {
> +			if (sel->which == V4L2_SUBDEV_FORMAT_TRY)
> +				rect = v4l2_subdev_get_try_crop(sd, cfg,
> +							RKISP1_ISP_PAD_SINK);
> +			else
> +				rect = &isp_sd->in_crop;
> +			sel->r = *rect;
> +		}
> +		break;
> +	case V4L2_SEL_TGT_CROP:
> +		if (sel->which == V4L2_SUBDEV_FORMAT_TRY)
> +			rect = v4l2_subdev_get_try_crop(sd, cfg, sel->pad);
> +		else if (sel->pad == RKISP1_ISP_PAD_SINK)
> +			rect = &isp_sd->in_crop;
> +		else
> +			rect = &isp_sd->out_crop;
> +		sel->r = *rect;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rkisp1_isp_sd_set_selection(struct v4l2_subdev *sd,
> +				       struct v4l2_subdev_pad_config *cfg,
> +				       struct v4l2_subdev_selection *sel)
> +{
> +	struct rkisp1_isp_subdev *isp_sd = sd_to_isp_sd(sd);
> +	struct rkisp1_device *dev = sd_to_isp_dev(sd);
> +
> +	if (sel->pad != RKISP1_ISP_PAD_SOURCE_PATH &&
> +	    sel->pad != RKISP1_ISP_PAD_SINK)
> +		return -EINVAL;
> +	if (sel->target != V4L2_SEL_TGT_CROP)
> +		return -EINVAL;
> +
> +	v4l2_dbg(1, rkisp1_debug, &dev->v4l2_dev,
> +		 "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__, sel->pad,
> +		 sel->r.left, sel->r.top, sel->r.width, sel->r.height);
> +	rkisp1_isp_sd_try_crop(sd, cfg, sel);
> +
> +	if (sel->which == V4L2_SUBDEV_FORMAT_TRY) {
> +		struct v4l2_rect *try_sel =
> +			v4l2_subdev_get_try_crop(sd, cfg, sel->pad);
> +
> +		*try_sel = sel->r;
> +		return 0;
> +	}
> +
> +	if (sel->pad == RKISP1_ISP_PAD_SINK)
> +		isp_sd->in_crop = sel->r;
> +	else
> +		isp_sd->out_crop = sel->r;
> +
> +	return 0;
> +}
> +
> +static int mipi_csi2_s_stream_start(struct rkisp1_isp_subdev *isp_sd,
> +				    struct rkisp1_sensor *sensor)
> +{
> +	union phy_configure_opts opts = { 0 };
> +	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
> +	struct v4l2_ctrl *pixel_rate;
> +	s64 pixel_clock;
> +
> +	pixel_rate = v4l2_ctrl_find(sensor->sd->ctrl_handler,
> +				    V4L2_CID_PIXEL_RATE);
> +	if (!pixel_rate) {
> +		v4l2_warn(sensor->sd, "No pixel rate control in subdev\n");
> +		return -EPIPE;
> +	}
> +
> +	pixel_clock = v4l2_ctrl_g_ctrl_int64(pixel_rate);
> +	if (!pixel_clock) {
> +		v4l2_err(sensor->sd, "Invalid pixel rate value\n");
> +		return -EINVAL;
> +	}
> +
> +	phy_mipi_dphy_get_default_config(pixel_clock, isp_sd->in_fmt.bus_width,
> +					 sensor->lanes, cfg);
> +	phy_set_mode(sensor->dphy, PHY_MODE_MIPI_DPHY);
> +	phy_configure(sensor->dphy, &opts);
> +	phy_power_on(sensor->dphy);
> +
> +	return 0;
> +}
> +
> +static void mipi_csi2_s_stream_stop(struct rkisp1_sensor *sensor)
> +{
> +	phy_power_off(sensor->dphy);
> +}
> +
> +static int rkisp1_isp_sd_s_stream(struct v4l2_subdev *sd, int on)
> +{
> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> +	struct v4l2_subdev *sensor_sd;
> +	int ret = 0;
> +
> +	if (!on) {
> +		ret = rkisp1_isp_stop(isp_dev);
> +		if (ret < 0)
> +			return ret;
> +		mipi_csi2_s_stream_stop(isp_dev->active_sensor);
> +		return 0;
> +	}
> +
> +	sensor_sd = get_remote_sensor(sd);
> +	if (!sensor_sd)
> +		return -ENODEV;
> +
> +	isp_dev->active_sensor = sd_to_sensor(isp_dev, sensor_sd);
> +	if (!isp_dev->active_sensor)
> +		return -ENODEV;
> +
> +	atomic_set(&isp_dev->isp_sdev.frm_sync_seq, 0);
> +	ret = rkisp1_config_cif(isp_dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* TODO: support other interfaces */
> +	if (isp_dev->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> +		return -EINVAL;
> +
> +	ret = mipi_csi2_s_stream_start(&isp_dev->isp_sdev,
> +				       isp_dev->active_sensor);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = rkisp1_isp_start(isp_dev);
> +	if (ret)
> +		mipi_csi2_s_stream_stop(isp_dev->active_sensor);
> +
> +	return ret;
> +}
> +
> +static int rkisp1_isp_sd_s_power(struct v4l2_subdev *sd, int on)

If you support runtime PM, you shouldn't implement the s_power op.

You'll still need to call s_power on external subdevs though.

> +{
> +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> +	int ret;
> +
> +	v4l2_dbg(1, rkisp1_debug, &isp_dev->v4l2_dev, "s_power: %d\n", on);
> +
> +	if (on) {
> +		ret = pm_runtime_get_sync(isp_dev->dev);
> +		if (ret < 0)
> +			return ret;
> +
> +		rkisp1_config_clk(isp_dev);
> +	} else {
> +		ret = pm_runtime_put(isp_dev->dev);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rkisp1_subdev_link_validate(struct media_link *link)
> +{
> +	if (link->source->index == RKISP1_ISP_PAD_SINK_PARAMS)

Is this test correct? The source is the source end of the link, i.e. the
video node.

How about the links that end in a video node?

> +		return 0;
> +
> +	return v4l2_subdev_link_validate(link);
> +}
> +
> +static int rkisp1_subdev_fmt_link_validate(struct v4l2_subdev *sd,
> +					struct media_link *link,
> +					struct v4l2_subdev_format *source_fmt,
> +					struct v4l2_subdev_format *sink_fmt)
> +{
> +	if (source_fmt->format.code != sink_fmt->format.code)
> +		return -EINVAL;
> +
> +	/* Crop is available */
> +	if (source_fmt->format.width < sink_fmt->format.width ||
> +	    source_fmt->format.height < sink_fmt->format.height)
> +		return -EINVAL;
> +

Could you use v4l2_subdev_link_validate_default()?

> +	return 0;
> +}
> +
> +static void rkisp1_isp_queue_event_sof(struct rkisp1_isp_subdev *isp)
> +{
> +	struct v4l2_event event = {
> +		.type = V4L2_EVENT_FRAME_SYNC,
> +		.u.frame_sync.frame_sequence =
> +			atomic_inc_return(&isp->frm_sync_seq) - 1,
> +	};
> +	v4l2_event_queue(isp->sd.devnode, &event);
> +}
> +
> +static int rkisp1_isp_sd_subs_evt(struct v4l2_subdev *sd, struct v4l2_fh *fh,
> +				  struct v4l2_event_subscription *sub)
> +{
> +	if (sub->type != V4L2_EVENT_FRAME_SYNC)
> +		return -EINVAL;
> +
> +	/* Line number. For now only zero accepted. */
> +	if (sub->id != 0)
> +		return -EINVAL;
> +
> +	return v4l2_event_subscribe(fh, sub, 0, NULL);
> +}
> +
> +static const struct v4l2_subdev_pad_ops rkisp1_isp_sd_pad_ops = {
> +	.enum_mbus_code = rkisp1_isp_sd_enum_mbus_code,
> +	.get_selection = rkisp1_isp_sd_get_selection,
> +	.set_selection = rkisp1_isp_sd_set_selection,
> +	.init_cfg = rkisp1_isp_sd_init_config,
> +	.get_fmt = rkisp1_isp_sd_get_fmt,
> +	.set_fmt = rkisp1_isp_sd_set_fmt,
> +	.link_validate = rkisp1_subdev_fmt_link_validate,
> +};
> +
> +static const struct media_entity_operations rkisp1_isp_sd_media_ops = {
> +	.link_validate = rkisp1_subdev_link_validate,
> +};
> +
> +static const struct v4l2_subdev_video_ops rkisp1_isp_sd_video_ops = {
> +	.s_stream = rkisp1_isp_sd_s_stream,
> +};
> +
> +static const struct v4l2_subdev_core_ops rkisp1_isp_core_ops = {
> +	.subscribe_event = rkisp1_isp_sd_subs_evt,
> +	.unsubscribe_event = v4l2_event_subdev_unsubscribe,
> +	.s_power = rkisp1_isp_sd_s_power,
> +};
> +
> +static struct v4l2_subdev_ops rkisp1_isp_sd_ops = {

const

> +	.core = &rkisp1_isp_core_ops,
> +	.video = &rkisp1_isp_sd_video_ops,
> +	.pad = &rkisp1_isp_sd_pad_ops,
> +};
> +
> +static void rkisp1_isp_sd_init_default_fmt(struct rkisp1_isp_subdev *isp_sd)
> +{
> +	struct v4l2_mbus_framefmt *in_frm = &isp_sd->in_frm;
> +	struct v4l2_rect *in_crop = &isp_sd->in_crop;
> +	struct v4l2_rect *out_crop = &isp_sd->out_crop;
> +	struct ispsd_in_fmt *in_fmt = &isp_sd->in_fmt;
> +	struct ispsd_out_fmt *out_fmt = &isp_sd->out_fmt;
> +
> +	*in_fmt = rkisp1_isp_input_formats[0];
> +	in_frm->width = RKISP1_DEFAULT_WIDTH;
> +	in_frm->height = RKISP1_DEFAULT_HEIGHT;
> +	in_frm->code = in_fmt->mbus_code;
> +
> +	in_crop->width = in_frm->width;
> +	in_crop->height = in_frm->height;
> +	in_crop->left = 0;
> +	in_crop->top = 0;
> +
> +	/* propagate to source */
> +	*out_crop = *in_crop;
> +	*out_fmt = rkisp1_isp_output_formats[0];
> +	isp_sd->quantization = V4L2_QUANTIZATION_FULL_RANGE;
> +}
> +
> +int rkisp1_register_isp_subdev(struct rkisp1_device *isp_dev,
> +			       struct v4l2_device *v4l2_dev)
> +{
> +	struct rkisp1_isp_subdev *isp_sdev = &isp_dev->isp_sdev;
> +	struct v4l2_subdev *sd = &isp_sdev->sd;
> +	int ret;
> +
> +	v4l2_subdev_init(sd, &rkisp1_isp_sd_ops);
> +	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
> +	sd->entity.ops = &rkisp1_isp_sd_media_ops;
> +	snprintf(sd->name, sizeof(sd->name), "rkisp1-isp-subdev");

strscpy()

> +
> +	isp_sdev->pads[RKISP1_ISP_PAD_SINK].flags =
> +		MEDIA_PAD_FL_SINK | MEDIA_PAD_FL_MUST_CONNECT;
> +	isp_sdev->pads[RKISP1_ISP_PAD_SINK_PARAMS].flags = MEDIA_PAD_FL_SINK;
> +	isp_sdev->pads[RKISP1_ISP_PAD_SOURCE_PATH].flags = MEDIA_PAD_FL_SOURCE;
> +	isp_sdev->pads[RKISP1_ISP_PAD_SOURCE_STATS].flags = MEDIA_PAD_FL_SOURCE;
> +	sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
> +	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX,
> +				     isp_sdev->pads);
> +	if (ret < 0)
> +		return ret;
> +
> +	sd->owner = THIS_MODULE;
> +	v4l2_set_subdevdata(sd, isp_dev);
> +
> +	sd->grp_id = GRP_ID_ISP;
> +	ret = v4l2_device_register_subdev(v4l2_dev, sd);
> +	if (ret < 0) {
> +		v4l2_err(sd, "Failed to register isp subdev\n");
> +		goto err_cleanup_media_entity;
> +	}
> +
> +	rkisp1_isp_sd_init_default_fmt(isp_sdev);
> +
> +	return 0;

A newline would be nice here.

> +err_cleanup_media_entity:
> +	media_entity_cleanup(&sd->entity);

And here.

> +	return ret;
> +}
> +
> +void rkisp1_unregister_isp_subdev(struct rkisp1_device *isp_dev)
> +{
> +	struct v4l2_subdev *sd = &isp_dev->isp_sdev.sd;
> +
> +	v4l2_device_unregister_subdev(sd);
> +	media_entity_cleanup(&sd->entity);
> +}
> +
> +/****************  Interrupter Handler ****************/
> +
> +void rkisp1_mipi_isr(unsigned int mis, struct rkisp1_device *dev)
> +{
> +	struct v4l2_device *v4l2_dev = &dev->v4l2_dev;
> +	void __iomem *base = dev->base_addr;
> +	u32 val;
> +
> +	writel(~0, base + CIF_MIPI_ICR);
> +
> +	/*
> +	 * Disable DPHY errctrl interrupt, because this dphy
> +	 * erctrl signal is asserted until the next changes
> +	 * of line state. This time is may be too long and cpu
> +	 * is hold in this interrupt.
> +	 */
> +	if (mis & CIF_MIPI_ERR_CTRL(0x0f)) {
> +		val = readl(base + CIF_MIPI_IMSC);
> +		writel(val & ~CIF_MIPI_ERR_CTRL(0x0f), base + CIF_MIPI_IMSC);
> +		dev->isp_sdev.dphy_errctrl_disabled = true;
> +	}
> +
> +	/*
> +	 * Enable DPHY errctrl interrupt again, if mipi have receive
> +	 * the whole frame without any error.
> +	 */
> +	if (mis == CIF_MIPI_FRAME_END) {
> +		/*
> +		 * Enable DPHY errctrl interrupt again, if mipi have receive
> +		 * the whole frame without any error.
> +		 */
> +		if (dev->isp_sdev.dphy_errctrl_disabled) {
> +			val = readl(base + CIF_MIPI_IMSC);
> +			val |= CIF_MIPI_ERR_CTRL(0x0f);
> +			writel(val, base + CIF_MIPI_IMSC);
> +			dev->isp_sdev.dphy_errctrl_disabled = false;
> +		}
> +	} else {
> +		v4l2_warn(v4l2_dev, "MIPI mis error: 0x%08x\n", mis);
> +	}
> +}
> +
> +void rkisp1_isp_isr(unsigned int isp_mis, struct rkisp1_device *dev)
> +{
> +	void __iomem *base = dev->base_addr;
> +	unsigned int isp_mis_tmp = 0;
> +	unsigned int isp_err = 0;
> +
> +	/* start edge of v_sync */
> +	if (isp_mis & CIF_ISP_V_START) {
> +		rkisp1_isp_queue_event_sof(&dev->isp_sdev);
> +
> +		writel(CIF_ISP_V_START, base + CIF_ISP_ICR);
> +		isp_mis_tmp = readl(base + CIF_ISP_MIS);
> +		if (isp_mis_tmp & CIF_ISP_V_START)
> +			v4l2_err(&dev->v4l2_dev, "isp icr v_statr err: 0x%x\n",
> +				 isp_mis_tmp);
> +	}
> +
> +	if ((isp_mis & CIF_ISP_PIC_SIZE_ERROR)) {

Extra parentheses.

> +		/* Clear pic_size_error */
> +		writel(CIF_ISP_PIC_SIZE_ERROR, base + CIF_ISP_ICR);
> +		isp_err = readl(base + CIF_ISP_ERR);
> +		v4l2_err(&dev->v4l2_dev,
> +			 "CIF_ISP_PIC_SIZE_ERROR (0x%08x)", isp_err);
> +		writel(isp_err, base + CIF_ISP_ERR_CLR);
> +	} else if ((isp_mis & CIF_ISP_DATA_LOSS)) {
> +		/* Clear data_loss */
> +		writel(CIF_ISP_DATA_LOSS, base + CIF_ISP_ICR);
> +		v4l2_err(&dev->v4l2_dev, "CIF_ISP_DATA_LOSS\n");
> +		writel(CIF_ISP_DATA_LOSS, base + CIF_ISP_ICR);
> +	}
> +
> +	/* sampled input frame is complete */
> +	if (isp_mis & CIF_ISP_FRAME_IN) {
> +		writel(CIF_ISP_FRAME_IN, base + CIF_ISP_ICR);
> +		isp_mis_tmp = readl(base + CIF_ISP_MIS);
> +		if (isp_mis_tmp & CIF_ISP_FRAME_IN)
> +			v4l2_err(&dev->v4l2_dev, "isp icr frame_in err: 0x%x\n",
> +				 isp_mis_tmp);
> +	}
> +
> +	/* frame was completely put out */
> +	if (isp_mis & CIF_ISP_FRAME) {
> +		u32 isp_ris = 0;
> +		/* Clear Frame In (ISP) */
> +		writel(CIF_ISP_FRAME, base + CIF_ISP_ICR);
> +		isp_mis_tmp = readl(base + CIF_ISP_MIS);
> +		if (isp_mis_tmp & CIF_ISP_FRAME)
> +			v4l2_err(&dev->v4l2_dev,
> +				 "isp icr frame end err: 0x%x\n", isp_mis_tmp);
> +
> +		isp_ris = readl(base + CIF_ISP_RIS);
> +		if (isp_ris & (CIF_ISP_AWB_DONE | CIF_ISP_AFM_FIN |
> +			       CIF_ISP_EXP_END | CIF_ISP_HIST_MEASURE_RDY))
> +			rkisp1_stats_isr(&dev->stats_vdev, isp_ris);
> +	}
> +
> +	/*
> +	 * Then update changed configs. Some of them involve
> +	 * lot of register writes. Do those only one per frame.
> +	 * Do the updates in the order of the processing flow.
> +	 */
> +	rkisp1_params_isr(&dev->params_vdev, isp_mis);
> +}
> diff --git a/drivers/media/platform/rockchip/isp1/rkisp1.h b/drivers/media/platform/rockchip/isp1/rkisp1.h
> new file mode 100644
> index 000000000000..b0366e354ec2
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/isp1/rkisp1.h
> @@ -0,0 +1,111 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Rockchip isp1 driver
> + *
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#ifndef _RKISP1_H
> +#define _RKISP1_H
> +
> +#include <linux/platform_device.h>
> +#include <media/v4l2-fwnode.h>
> +
> +#include "common.h"
> +
> +struct rkisp1_stream;
> +
> +/*
> + * struct ispsd_in_fmt - ISP intput-pad format
> + *
> + * Translate mbus_code to hardware format values
> + *
> + * @bus_width: used for parallel
> + */
> +struct ispsd_in_fmt {
> +	u32 mbus_code;
> +	u8 fmt_type;
> +	u32 mipi_dt;
> +	u32 yuv_seq;
> +	enum rkisp1_fmt_raw_pat_type bayer_pat;
> +	u8 bus_width;
> +};
> +
> +struct ispsd_out_fmt {
> +	u32 mbus_code;
> +	u8 fmt_type;
> +};
> +
> +struct rkisp1_ie_config {
> +	unsigned int effect;
> +};
> +
> +enum rkisp1_isp_pad {
> +	RKISP1_ISP_PAD_SINK,
> +	RKISP1_ISP_PAD_SINK_PARAMS,
> +	RKISP1_ISP_PAD_SOURCE_PATH,
> +	RKISP1_ISP_PAD_SOURCE_STATS,
> +	RKISP1_ISP_PAD_MAX
> +};
> +
> +/*
> + * struct rkisp1_isp_subdev - ISP sub-device
> + *
> + * See Cropping regions of ISP in rkisp1.c for details
> + * @in_frm: input size, don't have to be equal to sensor size
> + * @in_fmt: input format
> + * @in_crop: crop for sink pad
> + * @out_fmt: output format
> + * @out_crop: output size
> + *
> + * @dphy_errctrl_disabled: if dphy errctrl is disabled(avoid endless interrupt)
> + * @frm_sync_seq: frame sequence, to sync frame_id between video devices.
> + * @quantization: output quantization
> + */
> +struct rkisp1_isp_subdev {
> +	struct v4l2_subdev sd;
> +	struct media_pad pads[RKISP1_ISP_PAD_MAX];
> +	struct v4l2_ctrl_handler ctrl_handler;
> +	struct v4l2_mbus_framefmt in_frm;
> +	struct ispsd_in_fmt in_fmt;
> +	struct v4l2_rect in_crop;
> +	struct ispsd_out_fmt out_fmt;
> +	struct v4l2_rect out_crop;
> +	bool dphy_errctrl_disabled;
> +	atomic_t frm_sync_seq;
> +	enum v4l2_quantization quantization;
> +};
> +
> +int rkisp1_register_isp_subdev(struct rkisp1_device *isp_dev,
> +			       struct v4l2_device *v4l2_dev);
> +
> +void rkisp1_unregister_isp_subdev(struct rkisp1_device *isp_dev);
> +
> +void rkisp1_mipi_isr(unsigned int mipi_mis, struct rkisp1_device *dev);
> +
> +void rkisp1_isp_isr(unsigned int isp_mis, struct rkisp1_device *dev);
> +
> +static inline
> +struct ispsd_out_fmt *rkisp1_get_ispsd_out_fmt(struct rkisp1_isp_subdev *isp_sdev)
> +{
> +	return &isp_sdev->out_fmt;
> +}
> +
> +static inline
> +struct ispsd_in_fmt *rkisp1_get_ispsd_in_fmt(struct rkisp1_isp_subdev *isp_sdev)
> +{
> +	return &isp_sdev->in_fmt;
> +}
> +
> +static inline
> +struct v4l2_rect *rkisp1_get_isp_sd_win(struct rkisp1_isp_subdev *isp_sdev)
> +{
> +	return &isp_sdev->out_crop;
> +}

I'd just use the struct fields directly in the code as it's easier to
figure out which field in the struct is being accessed.

> +
> +static inline struct rkisp1_isp_subdev *sd_to_isp_sd(struct v4l2_subdev *sd)
> +{
> +	return container_of(sd, struct rkisp1_isp_subdev, sd);
> +}
> +
> +#endif /* _RKISP1_H */

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
