Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F515D4EE
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Feb 2020 10:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp1V1heeGVsmAVd9zI4pXzHX+IGKrZjl6149wKwJl6M=; b=ng9pBJkp36qCvr
	9v/u48JEI5xv1KX3/G2NIBQiRX5WgavrhlNYkUnRjrSrlW7/Krv80OpUJEQ6v8cu6Y8OMAjvUTChg
	S7SXMevw3uJF8m/DwdvVOC1sIPxCOVvs2eAazebpzo/O6T85kK/aQZ3CrjgWcoJ47g1Jjs7hvMcTL
	stj61KB9ne+Z1AoPlOUzJtPvB/V2zg7Md3ml6nKIYPBHreNdRNdyK1HSDh8xgcqyMTg7jax+qRNOe
	QW8EHpIZRywqvQxx1mdbSs5xdEQTwfBEJzQRuLNYBMdr2SNG2PiaT4PgCNZruRX+eXRV3wx9dc3JH
	UGBIUTYM+exO935bCqMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XYD-0006RF-VQ; Fri, 14 Feb 2020 09:46:21 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XYB-0006Pp-2g
 for linux-rockchip@lists.infradead.org; Fri, 14 Feb 2020 09:46:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 01:46:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="347925547"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 01:46:09 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 3D0662088D; Fri, 14 Feb 2020 11:46:07 +0200 (EET)
Date: Fri, 14 Feb 2020 11:46:07 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 3/4] media: staging: rkisp1: add serialization to the isp
 subdev ops
Message-ID: <20200214094607.GG22481@paasikivi.fi.intel.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
 <20200207085951.5226-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207085951.5226-4-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_014619_131180_A69DA4A9 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thanks for the patchset.

On Fri, Feb 07, 2020 at 09:59:50AM +0100, Dafna Hirschfeld wrote:
> For subdevices drivers, the drivers themself are responsible
> for serializing their operations.
> This patch adds serialization to the isp subdevice.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  2 ++
>  drivers/staging/media/rkisp1/rkisp1-isp.c    | 29 ++++++++++++++------
>  2 files changed, 23 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 4e773d611d1b..7c668ac4bdd5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -96,6 +96,7 @@ struct rkisp1_sensor_async {
>   * @sink_crop: crop for sink pad
>   * @src_fmt: output format
>   * @src_crop: output size
> + * @ops_lock: ops serialization
>   *
>   * @is_dphy_errctrl_disabled : if dphy errctrl is disabled (avoid endless interrupt)
>   * @frame_sequence: used to synchronize frame_id between video devices.
> @@ -107,6 +108,7 @@ struct rkisp1_isp {
>  	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
>  	const struct rkisp1_isp_mbus_info *sink_fmt;
>  	const struct rkisp1_isp_mbus_info *src_fmt;
> +	struct mutex ops_lock;
>  	bool is_dphy_errctrl_disabled;
>  	atomic_t frame_sequence;
>  };
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index c98e3c16f520..aa7a842f97f8 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -791,7 +791,9 @@ static int rkisp1_isp_get_fmt(struct v4l2_subdev *sd,
>  {
>  	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>  
> +	mutex_lock(&isp->ops_lock);
>  	fmt->format = *rkisp1_isp_get_pad_fmt(isp, cfg, fmt->pad, fmt->which);
> +	mutex_unlock(&isp->ops_lock);
>  	return 0;
>  }
>  
> @@ -801,6 +803,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
>  {
>  	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
>  
> +	mutex_lock(&isp->ops_lock);
>  	if (fmt->pad == RKISP1_ISP_PAD_SINK_VIDEO)
>  		rkisp1_isp_set_sink_fmt(isp, cfg, &fmt->format, fmt->which);
>  	else if (fmt->pad == RKISP1_ISP_PAD_SOURCE_VIDEO)
> @@ -809,6 +812,7 @@ static int rkisp1_isp_set_fmt(struct v4l2_subdev *sd,
>  		fmt->format = *rkisp1_isp_get_pad_fmt(isp, cfg, fmt->pad,
>  						      fmt->which);
>  
> +	mutex_unlock(&isp->ops_lock);
>  	return 0;
>  }
>  
> @@ -817,11 +821,13 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
>  				    struct v4l2_subdev_selection *sel)
>  {
>  	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
> +	int ret = 0;
>  
>  	if (sel->pad != RKISP1_ISP_PAD_SOURCE_VIDEO &&
>  	    sel->pad != RKISP1_ISP_PAD_SINK_VIDEO)
>  		return -EINVAL;
>  
> +	mutex_lock(&isp->ops_lock);
>  	switch (sel->target) {
>  	case V4L2_SEL_TGT_CROP_BOUNDS:
>  		if (sel->pad == RKISP1_ISP_PAD_SINK_VIDEO) {
> @@ -844,10 +850,10 @@ static int rkisp1_isp_get_selection(struct v4l2_subdev *sd,
>  						  sel->which);
>  		break;
>  	default:
> -		return -EINVAL;
> +		ret = -EINVAL;
>  	}
> -
> -	return 0;
> +	mutex_unlock(&isp->ops_lock);
> +	return ret;
>  }
>  
>  static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
> @@ -857,21 +863,23 @@ static int rkisp1_isp_set_selection(struct v4l2_subdev *sd,
>  	struct rkisp1_device *rkisp1 =
>  		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
>  	struct rkisp1_isp *isp = container_of(sd, struct rkisp1_isp, sd);
> +	int ret = 0;
>  
>  	if (sel->target != V4L2_SEL_TGT_CROP)
>  		return -EINVAL;
>  
>  	dev_dbg(rkisp1->dev, "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__,
>  		sel->pad, sel->r.left, sel->r.top, sel->r.width, sel->r.height);
> -
> +	mutex_lock(&isp->ops_lock);
>  	if (sel->pad == RKISP1_ISP_PAD_SINK_VIDEO)
>  		rkisp1_isp_set_sink_crop(isp, cfg, &sel->r, sel->which);
>  	else if (sel->pad == RKISP1_ISP_PAD_SOURCE_VIDEO)
>  		rkisp1_isp_set_src_crop(isp, cfg, &sel->r, sel->which);
>  	else
> -		return -EINVAL;
> +		ret = -EINVAL;
>  
> -	return 0;
> +	mutex_unlock(&isp->ops_lock);
> +	return ret;
>  }
>  
>  static int rkisp1_subdev_link_validate(struct media_link *link)
> @@ -948,6 +956,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  {
>  	struct rkisp1_device *rkisp1 =
>  		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
> +	struct rkisp1_isp *isp = &rkisp1->isp;
>  	struct v4l2_subdev *sensor_sd;
>  	int ret = 0;
>  
> @@ -967,16 +976,19 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  		return -EINVAL;
>  
>  	atomic_set(&rkisp1->isp.frame_sequence, -1);
> +	mutex_lock(&isp->ops_lock);
>  	ret = rkisp1_config_cif(rkisp1);
>  	if (ret)
> -		return ret;
> +		goto mutex_unlock;
>  
>  	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
>  	if (ret)
> -		return ret;
> +		goto mutex_unlock;
>  
>  	rkisp1_isp_start(rkisp1);
>  
> +mutex_unlock:
> +	mutex_unlock(&isp->ops_lock);
>  	return ret;
>  }
>  
> @@ -1036,6 +1048,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  	isp->sink_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SINK_PAD_FMT);
>  	isp->src_fmt = rkisp1_isp_mbus_info_get(RKISP1_DEF_SRC_PAD_FMT);
>  
> +	mutex_init(&isp->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
>  	if (ret)
>  		return ret;

Could you add mutex_destroy() on the mutex in rkisp1_isp_unregister(),
please? Similar comment on the 4th patch. This could be a follow-up patch,
too.

For the set,

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Kind regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
