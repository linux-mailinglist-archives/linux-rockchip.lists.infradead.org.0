Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC6E1DE902
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 16:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVk82gCF77U2miiBF7hoT6upbQlpfgR+aC1wQq0E5f0=; b=A6bZBDLDBWC/ig
	8tvbX6DzTkNHBg9JSKFFtBZF+oWHzBwS+nu9rCUiPBuhRWGYtrlKyv5D4ZA0K21zzhQyl/w01oQsY
	So1lKkcFm/4MdviRAkh5+2kSi3aW0iOK2NFnlo4HednNLzuQr6F6s9CKq+gjDLtE1KqFP+VL0Ids8
	F/pwwELIrT1MwVqoZUm2/B5Ylr9yjDaQGQ20WPz6A9IXVZZnfxgtjB8Sr2gDZUdhhoLsInSIUsxW8
	Ns27HvZj9cPyuu0U6MiaF8C1kuf5KgI+c3+ndNOSsYyYxwlONxIe/4mApfqYDx4ZwOHH9DGBRECE2
	tcPoWNDz2lvM1D+rYzow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8iA-0003Pb-HE; Fri, 22 May 2020 14:31:46 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8i7-0003PE-Bg
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 14:31:45 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1EE3324D;
 Fri, 22 May 2020 16:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590157900;
 bh=2lhX6lyy7lL0s5wAIBNSBghCgq1dinL1DspXHygbQkU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kY/xlx+PQzCbi4c6VZqnbH9t1fmHSKgLlK0fu0hQFvPK3gwG56DX+QrOWiB6CL+Uc
 Kj2MufFfMOp+zsaOOnizZFxZVLDPn2L4neQh9u0XZHic+V06erI/amXuq/OrFGcL/2
 c/IeD2oCbAchSo3OyQWhlACcQ+LCwoXhIMHk1xIY=
Date: Fri, 22 May 2020 17:31:28 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: fix dev param for dev_* debugs
Message-ID: <20200522143128.GB5824@pendragon.ideasonboard.com>
References: <20200522115633.3166-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522115633.3166-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_073143_547525_D8B58ACE 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Fri, May 22, 2020 at 01:56:33PM +0200, Dafna Hirschfeld wrote:
> In some debug prints a wrong 'dev' argument is used
> for the dev_(dbg/err/warn), this cause a prefix
> "(NULL device *)" to the prints.
> In some prints the 'dev' of the sensor subdevice is used
> which is also wrong.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 17 ++++++++++-------
>  drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
>  4 files changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 9ac38bafb839..f38801fea10d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -129,7 +129,7 @@ static int rkisp1_create_links(struct rkisp1_device *rkisp1)
>  		ret = media_entity_get_fwnode_pad(&sd->entity, sd->fwnode,
>  						  MEDIA_PAD_FL_SOURCE);
>  		if (ret < 0) {
> -			dev_err(sd->dev, "failed to find src pad for %s\n",
> +			dev_err(rkisp1->dev, "failed to find src pad for %s\n",
>  				sd->name);
>  			return ret;
>  		}
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index dc2b59a0160a..ec061b997bb4 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -203,10 +203,8 @@ static struct v4l2_subdev *rkisp1_get_remote_sensor(struct v4l2_subdev *sd)
>  
>  	local = &sd->entity.pads[RKISP1_ISP_PAD_SINK_VIDEO];
>  	remote = media_entity_remote_pad(local);
> -	if (!remote) {
> -		dev_warn(sd->dev, "No link between isp and sensor\n");
> +	if (!remote)
>  		return NULL;
> -	}
>  
>  	sensor_me = remote->entity;
>  	return media_entity_to_v4l2_subdev(sensor_me);
> @@ -889,18 +887,20 @@ static const struct v4l2_subdev_pad_ops rkisp1_isp_pad_ops = {
>  static int rkisp1_mipi_csi2_start(struct rkisp1_isp *isp,
>  				  struct rkisp1_sensor_async *sensor)
>  {
> +	struct rkisp1_device *rkisp1 =
> +		container_of(isp->sd.v4l2_dev, struct rkisp1_device, v4l2_dev);

The driver uses container_of() on the v4l2_dev in several places to get
the rkisp1_device in contexts where you only have the rkisp1_isp.
Wouldn't it be simpler to add a pointer to rkisp1_device in rkisp1_isp,
like there's one in rkisp1_capture and rkisp1_resizer ? It's not a
prerequisite for this patch.

>  	union phy_configure_opts opts;
>  	struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
>  	s64 pixel_clock;
>  
>  	if (!sensor->pixel_rate_ctrl) {
> -		dev_warn(sensor->sd->dev, "No pixel rate control in subdev\n");
> +		dev_warn(rkisp1->dev, "No pixel rate control in subdev\n");

Maybe s/in subdev/in sensor subdev/ ?

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  		return -EPIPE;
>  	}
>  
>  	pixel_clock = v4l2_ctrl_g_ctrl_int64(sensor->pixel_rate_ctrl);
>  	if (!pixel_clock) {
> -		dev_err(sensor->sd->dev, "Invalid pixel rate value\n");
> +		dev_err(rkisp1->dev, "Invalid pixel rate value\n");
>  		return -EINVAL;
>  	}
>  
> @@ -933,8 +933,11 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	}
>  
>  	sensor_sd = rkisp1_get_remote_sensor(sd);
> -	if (!sensor_sd)
> +	if (!sensor_sd) {
> +		dev_warn(rkisp1->dev, "No link between isp and sensor\n");
>  		return -ENODEV;
> +	}
> +
>  	rkisp1->active_sensor = container_of(sensor_sd->asd,
>  					     struct rkisp1_sensor_async, asd);
>  
> @@ -1021,7 +1024,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  
>  	ret = v4l2_device_register_subdev(v4l2_dev, sd);
>  	if (ret) {
> -		dev_err(sd->dev, "Failed to register isp subdev\n");
> +		dev_err(rkisp1->dev, "Failed to register isp subdev\n");
>  		goto err_cleanup_media_entity;
>  	}
>  
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 44d542caf32b..797e79de659c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1607,7 +1607,7 @@ int rkisp1_params_register(struct rkisp1_params *params,
>  		goto err_release_queue;
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
> -		dev_err(&vdev->dev,
> +		dev_err(rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
>  		goto err_cleanup_media_entity;
>  	}
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index d049374413dc..26fb41053f56 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -639,7 +639,7 @@ static int rkisp1_rsz_set_selection(struct v4l2_subdev *sd,
>  	if (sel->target != V4L2_SEL_TGT_CROP || sel->pad == RKISP1_RSZ_PAD_SRC)
>  		return -EINVAL;
>  
> -	dev_dbg(sd->dev, "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__,
> +	dev_dbg(rsz->rkisp1->dev, "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__,
>  		sel->pad, sel->r.left, sel->r.top, sel->r.width, sel->r.height);
>  
>  	mutex_lock(&rsz->ops_lock);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
