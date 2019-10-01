Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17545C3822
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 16:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1U0NAEhfjg/GwDYe1QMOsEPzdn/752Ira2egEo51Pb8=; b=EBrqK6yuXZdGHn
	FIXaFBK2iSZzH7iiNm4hGviM/5hFelAV8A1IxEOfCAT3nJ5nyNh3lcCJICxghT8tGTgwnejMKykce
	e6vlHDsgonXk4iXYGxl5bk4n8/d5UwkAb3hqFVmQPow0lR9YNJVKi7qXc9M2vo1nfdH7Zj7LqXD1k
	nzBBzQBscezp8YmNL+4A1A7VykVHHKykYRR/zYxp0dwBuIkqIuUgU9VExgrwz52/NHiYtNISSy/rm
	O1EMs5YLZdR2V4sSG4qVJ2fnmsT+kU0Vv+seHU74arnvz0C4G8Zpz4sQ3v8Y2l9hin1XoqXX0u514
	iK532rmFtU/StluWVhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJZO-0002sA-53; Tue, 01 Oct 2019 14:56:06 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJZL-0002qr-C7
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 14:56:04 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="203254365"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 01 Oct 2019 07:55:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:55:56 +0300
Date: Tue, 1 Oct 2019 17:55:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 5/5] RFC: drm/atomic-helper: Reapply color
 transformation after resume
Message-ID: <20191001145556.GP1208@intel.com>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-6-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930222802.32088-6-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_075603_424648_260D4663 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sean Paul <seanpaul@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 07:28:02PM -0300, Ezequiel Garcia wrote:
> Some platforms are not able to maintain the color transformation
> state after a system suspend/resume cycle.
> =

> Set the colog_mgmt_changed flag so that CMM on the CRTCs in
> the suspend state are reapplied after system resume.
> =

> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> This is an RFC, and it's mostly based on Jacopo Mondi's work https://lkml=
.org/lkml/2019/9/6/498.
> =

> Changes from v2:
> * New patch.
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_at=
omic_helper.c
> index e41db0f202ca..518488125575 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -3234,8 +3234,20 @@ int drm_atomic_helper_resume(struct drm_device *de=
v,
>  			     struct drm_atomic_state *state)
>  {
>  	struct drm_modeset_acquire_ctx ctx;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_crtc *crtc;
> +	unsigned int i;
>  	int err;
>  =

> +	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
> +		/*
> +		 * Force re-enablement of CMM after system resume if any
> +		 * of the DRM color transformation properties was set in
> +		 * the state saved at system suspend time.
> +		 */
> +		if (crtc_state->gamma_lut)

You say "any" but you check the one?

> +			crtc_state->color_mgmt_changed =3D true;

But I'm not convinced this is the best way to go about it. =

I would generally expect that you repgrogram everything
when doing a full modeset since the state was possibly
lost while the crtc was disabled.

> +	}
>  	drm_mode_config_reset(dev);
>  =

>  	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> -- =

> 2.22.0
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
