Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 017F2F0A39
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 00:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/nvFi7HwzfQDHL/fHOirkcMqzRthGRJTTnKkKH+JFM=; b=eNm+ZjAXC25jiz
	Ts03IDpn6bUx5ARdhsECQ2gsXJAU9s6kzlczJWxQkS8EIWNzZK2sJb2KeLSRRxIgSyFm7FGR4MoSV
	hJNyYl4EM5g3xoqldeACO29Rydec3lbvsPfdlN/FVpPhwzPYTuh7+UKepQXBkBffuWOb8EVMmy6Zp
	xBD0wMwkOCvhJXHpg+5YHlSA3+WIgabXdDzAkssLtjX655ugGabSgtsETOoVt8A+u7tEmO06i6Csr
	8BoEG+TOB6aftGNC0Bk267bT/R7OjzaFL02igWTH/+UbaclHPTuuUhvpoHbFh5TpLuNQJd/o66g8U
	sGuuXFBIbc3HEVvjpZeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS8LV-0007FY-OP; Tue, 05 Nov 2019 23:34:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS8LS-0007FA-Ep
 for linux-rockchip@lists.infradead.org; Tue, 05 Nov 2019 23:34:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: daniels) with ESMTPSA id E83972852B3
Message-ID: <13a5d60f0262ea2505f95d139e04da7fa710fe7c.camel@collabora.com>
Subject: Re: [PATCHv2 4/4] drm/rockchip: Add support for afbc
From: Daniel Stone <daniels@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 dri-devel@lists.freedesktop.org
Date: Tue, 05 Nov 2019 23:34:28 +0000
In-Reply-To: <20191104221228.3588-5-andrzej.p@collabora.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-5-andrzej.p@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1 (by Flathub.org) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_153442_624887_876CD148 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 James Wang <james.qian.wang@arm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>, Mark Yao <mark.yao@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Andrzej,

On Mon, 2019-11-04 at 23:12 +0100, Andrzej Pietrasiewicz wrote:
> +	if (mode_cmd->modifier[0]) {

I believe this can still be DRM_FORMAT_MOD_INVALID, which != 0. You
probably want to explicitly check if it's an AFBC modifier.

> +		const struct drm_format_info *info;
> +		int bpp;
> +
> +		if (!drm_afbc_check_offset(dev, mode_cmd))
> +			return ERR_PTR(-EINVAL);
> +
> +		if (!drm_afbc_get_superblk_wh(mode_cmd->modifier[0],
> &w, &h))
> +			return ERR_PTR(-EINVAL);
> +
> +		if (w != 16 || h != 16) {
> +			DRM_DEV_ERROR(dev->dev,
> +				"Unsupported afbc tile w/h [%d/%d]\n",
> w, h);

This can just be a WARN_ONCE() or something, since it indicates an
impossible condition - the DRM core should've already rejected this
modifier as unsupported.

> +		if (mode_cmd->width > ROCKCHIP_MAX_AFBC_WIDTH) {
> +			DRM_DEV_ERROR(dev->dev,
> +				      "Unsupported width %d>%d\n",
> +				      mode_cmd->width,
> +				      ROCKCHIP_MAX_AFBC_WIDTH
> +			);

Userspace shouldn't be allowed to spam the log by triggering error
messages; please make this debug instead. Whilst you're there, adding
logs to the other error returns here might be useful.

> @@ -166,6 +179,7 @@ struct vop {
>  	/* optional internal rgb encoder */
>  	struct rockchip_rgb *rgb;
>  
> +	struct vop_win *afbc_win;

It seems like everywhere afbc_win is used, it's not actually used for
the window value, but rather just used as an is_afbc_enabled bool. In
that case, it would be better as a real bool, and living in either the
output or plane state.

This would eliminate the need to unset the variable as well.

Relatedly, can one VOP support multiple simultaneous windows using
AFBC? If not, the check that only one window is using AFBC is missing
from this patch.

> +static int vop_convert_afbc_format(uint32_t format)
> +{
> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ABGR8888:
> +		return AFBC_FMT_U8U8U8U8;
> +	case DRM_FORMAT_RGB888:
> +	case DRM_FORMAT_BGR888:
> +		return AFBC_FMT_U8U8U8;
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_BGR565:
> +		return AFBC_FMT_RGB565;
> +	/* either of the below should not be reachable */

Unreachable can be WARN_ONCE() rather than a silent return.

Other than that, this is looking a _lot_ nicer than v1 though!

Cheers,
Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
