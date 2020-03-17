Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA97188485
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 13:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHUVJOGPW1zSARYAlsw4yU5j4Fri+tX/HPncQDucwP0=; b=mgwQMCPNIAv7sO
	40d2iRJ2Tgqu8LPwvQEdVQ3as0TWdPLQIqzIgTCw7b3eDf3LYvFzZfQKmt0YVsunOZyZRVUmSK4Qi
	cXqOVWD1IwiYU5DMhC2Wgk8Kv8MKUAHdO56WBF+JYgjemWfKhnbNnwTpdIiZKfbuiy7O43zj2tCyG
	lW+a/Ilbgs+SGEbC41R7AQzKh8HjKchwAi5R3Z2ry+R/MHII1eIilxMe3bfzE5k9UdTf2nEaXbAtH
	apIXHtw2KZSRt3iwNgys2L2blt7F45OUTpokHFoD+esrsNGRSYqJIATM4zJq6K/Bd/NDyKAwkDag/
	30epDRiNmF1UPd7Q7J+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBi9-00014b-IM; Tue, 17 Mar 2020 12:52:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBi4-000143-RS
 for linux-rockchip@lists.infradead.org; Tue, 17 Mar 2020 12:52:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 7507E2950E2
Subject: Re: [PATCH v2 1/2] media: staging: rkisp1: remove mbus field from
 rkisp1_sensor_async
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200312154604.24996-1-dafna.hirschfeld@collabora.com>
 <20200312154604.24996-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <19a93392-f646-6bfc-d918-16c2a4c7e7e4@collabora.com>
Date: Tue, 17 Mar 2020 09:52:32 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200312154604.24996-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_055241_154093_D05303A4 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thanks for the patch, just a small comment below.

On 3/12/20 12:46 PM, Dafna Hirschfeld wrote:
> 'struct v4l2_mbus_config' is a legacy struct that should not be used
> in new drivers. So replace it with the fields:
> 
> enum v4l2_mbus_type mbus_type;
> unsigned int parallel_bus_flags;
> 
> The field 'parallel_bus_flags' is used only for buses of types
> V4L2_MBUS_BT656, V4L2_MBUS_PARALLEL which are not yet supported
> so they are set to 0.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  3 +-
>  drivers/staging/media/rkisp1/rkisp1-dev.c    | 22 ++-------
>  drivers/staging/media/rkisp1/rkisp1-isp.c    | 52 +++++++-------------
>  3 files changed, 24 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index b291cc60de8e..f5ee72dc19d3 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -80,8 +80,9 @@ enum rkisp1_isp_pad {
>   */
>  struct rkisp1_sensor_async {
>  	struct v4l2_async_subdev asd;
> -	struct v4l2_mbus_config mbus;
>  	unsigned int lanes;
> +	enum v4l2_mbus_type mbus_type;
> +	unsigned int parallel_bus_flags;
>  	struct v4l2_subdev *sd;
>  	struct v4l2_ctrl *pixel_rate_ctrl;
>  	struct phy *dphy;
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index b1b3c058e957..d2186856bb24 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -250,26 +250,14 @@ static int rkisp1_fwnode_parse(struct device *dev,
>  		return -EINVAL;
>  	}
>  
> -	s_asd->mbus.type = vep->bus_type;
> -	s_asd->mbus.flags = vep->bus.mipi_csi2.flags;
> +	s_asd->mbus_type = vep->bus_type;
>  	s_asd->lanes = vep->bus.mipi_csi2.num_data_lanes;
>  
> -	switch (vep->bus.mipi_csi2.num_data_lanes) {
> -	case 1:
> -		s_asd->mbus.flags |= V4L2_MBUS_CSI2_1_LANE;
> -		break;
> -	case 2:
> -		s_asd->mbus.flags |= V4L2_MBUS_CSI2_2_LANE;
> -		break;
> -	case 3:
> -		s_asd->mbus.flags |= V4L2_MBUS_CSI2_3_LANE;
> -		break;
> -	case 4:
> -		s_asd->mbus.flags |= V4L2_MBUS_CSI2_4_LANE;
> -		break;
> -	default:
> +	/* Parallel bus is currently not supported */
> +	s_asd->parallel_bus_flags = 0;

Why not just:

s_asd->parallel_bus_flags = vep->bus.mipi_csi2.flags

So when it gets supported, we don't need to change this, and you also don't
change the logic here, since this patch was supposed to just replace
struct v4l2_mbus_config by other variables.

Make sense?

> +
> +	if (s_asd->lanes < 1 || s_asd->lanes > 4)
>  		return -EINVAL;
> -	}
>  
>  	return 0;
>  }
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index fa53f05e37d8..bd17c3c498af 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -291,7 +291,7 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
>  	if (sink_fmt->fmt_type == RKISP1_FMT_BAYER) {
>  		acq_mult = 1;
>  		if (src_fmt->fmt_type == RKISP1_FMT_BAYER) {
> -			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +			if (sensor->mbus_type == V4L2_MBUS_BT656)
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT_ITU656;
>  			else
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_RAW_PICT;
> @@ -299,17 +299,17 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
>  			rkisp1_write(rkisp1, RKISP1_CIF_ISP_DEMOSAIC_TH(0xc),
>  				     RKISP1_CIF_ISP_DEMOSAIC);
>  
> -			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +			if (sensor->mbus_type == V4L2_MBUS_BT656)
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU656;
>  			else
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_BAYER_ITU601;
>  		}
>  	} else if (sink_fmt->fmt_type == RKISP1_FMT_YUV) {
>  		acq_mult = 2;
> -		if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +		if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
>  			isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
>  		} else {
> -			if (sensor->mbus.type == V4L2_MBUS_BT656)
> +			if (sensor->mbus_type == V4L2_MBUS_BT656)
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU656;
>  			else
>  				isp_ctrl = RKISP1_CIF_ISP_CTRL_ISP_MODE_ITU601;
> @@ -319,17 +319,17 @@ static int rkisp1_config_isp(struct rkisp1_device *rkisp1)
>  	}
>  
>  	/* Set up input acquisition properties */
> -	if (sensor->mbus.type == V4L2_MBUS_BT656 ||
> -	    sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> -		if (sensor->mbus.flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
> +	if (sensor->mbus_type == V4L2_MBUS_BT656 ||
> +	    sensor->mbus_type == V4L2_MBUS_PARALLEL) {
> +		if (sensor->parallel_bus_flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
>  			signal = RKISP1_CIF_ISP_ACQ_PROP_POS_EDGE;

You check both bus types, I understand that V4L2_MBUS_BT656 is also a parallel interface,
but I think it would be less confusing to name it just bus_flags, what do you think?

Regards,
Helen

>  	}
>  
> -	if (sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> -		if (sensor->mbus.flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
> +	if (sensor->mbus_type == V4L2_MBUS_PARALLEL) {
> +		if (sensor->parallel_bus_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
>  			signal |= RKISP1_CIF_ISP_ACQ_PROP_VSYNC_LOW;
>  
> -		if (sensor->mbus.flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
> +		if (sensor->parallel_bus_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
>  			signal |= RKISP1_CIF_ISP_ACQ_PROP_HSYNC_LOW;
>  	}
>  
> @@ -401,29 +401,11 @@ static int rkisp1_config_dvp(struct rkisp1_device *rkisp1)
>  static int rkisp1_config_mipi(struct rkisp1_device *rkisp1)
>  {
>  	const struct rkisp1_isp_mbus_info *sink_fmt = rkisp1->isp.sink_fmt;
> -	unsigned int lanes;
> +	unsigned int lanes = rkisp1->active_sensor->lanes;
>  	u32 mipi_ctrl;
>  
> -	/*
> -	 * rkisp1->active_sensor->mbus is set in isp or d-phy notifier_bound
> -	 * function
> -	 */
> -	switch (rkisp1->active_sensor->mbus.flags & V4L2_MBUS_CSI2_LANES) {
> -	case V4L2_MBUS_CSI2_4_LANE:
> -		lanes = 4;
> -		break;
> -	case V4L2_MBUS_CSI2_3_LANE:
> -		lanes = 3;
> -		break;
> -	case V4L2_MBUS_CSI2_2_LANE:
> -		lanes = 2;
> -		break;
> -	case V4L2_MBUS_CSI2_1_LANE:
> -		lanes = 1;
> -		break;
> -	default:
> +	if (lanes < 1 || lanes > 4)
>  		return -EINVAL;
> -	}
>  
>  	mipi_ctrl = RKISP1_CIF_MIPI_CTRL_NUM_LANES(lanes - 1) |
>  		    RKISP1_CIF_MIPI_CTRL_SHUTDOWNLANES(0xf) |
> @@ -470,11 +452,11 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
>  	u32 dpcl = rkisp1_read(rkisp1, RKISP1_CIF_VI_DPCL);
>  	int ret = 0;
>  
> -	if (sensor->mbus.type == V4L2_MBUS_BT656 ||
> -	    sensor->mbus.type == V4L2_MBUS_PARALLEL) {
> +	if (sensor->mbus_type == V4L2_MBUS_BT656 ||
> +	    sensor->mbus_type == V4L2_MBUS_PARALLEL) {
>  		ret = rkisp1_config_dvp(rkisp1);
>  		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_PARALLEL;
> -	} else if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +	} else if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
>  		ret = rkisp1_config_mipi(rkisp1);
>  		dpcl |= RKISP1_CIF_VI_DPCL_IF_SEL_MIPI;
>  	}
> @@ -561,7 +543,7 @@ static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
>  	rkisp1_config_clk(rkisp1);
>  
>  	/* Activate MIPI */
> -	if (sensor->mbus.type == V4L2_MBUS_CSI2_DPHY) {
> +	if (sensor->mbus_type == V4L2_MBUS_CSI2_DPHY) {
>  		val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
>  		rkisp1_write(rkisp1, val | RKISP1_CIF_MIPI_CTRL_OUTPUT_ENA,
>  			     RKISP1_CIF_MIPI_CTRL);
> @@ -956,7 +938,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	rkisp1->active_sensor = container_of(sensor_sd->asd,
>  					     struct rkisp1_sensor_async, asd);
>  
> -	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> +	if (rkisp1->active_sensor->mbus_type != V4L2_MBUS_CSI2_DPHY)
>  		return -EINVAL;
>  
>  	atomic_set(&rkisp1->isp.frame_sequence, -1);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
