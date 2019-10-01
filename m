Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D80DC380D
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 16:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RrfoGWl30WHICWXH7nMUrKELxfS4X2mP26U96TgXY2M=; b=IhsFVCnLruMOWhiGN4oAA9NIp
	FMFuUW29rlDgS4zd7kb2mGI9yhSVX/GLRwsfDFSsiHpvn6zTMKVSeNkt02W6kmw2h1NmesD5WX+7c
	CVzaXCXCxm4jofGhkIFnS23IAfhEh/m7bREibF9S7eHvHUaCmxtMA6bbHD/6CK3R2QPo0xdp9AjRS
	rdQRcTusc3LKq7jr5yr8HdYwgBFyVk8reyPnXKBMefeh34ZnbXiDDXlj7doh5uCaN7g+IzlW2eNrF
	6xAIACpzMdWhzBTdUsfUpg4ijCEHBF2ekYJRPb2WsOhX7NwbsQ7j174Z0eOB85sKOHeSMWpxOrpPV
	NaT9buoeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJUS-00015P-6r; Tue, 01 Oct 2019 14:51:00 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJUN-00013M-PV
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 14:50:58 +0000
X-Originating-IP: 2.224.242.101
Received: from uno.localdomain (2-224-242-101.ip172.fastwebnet.it
 [2.224.242.101]) (Authenticated sender: jacopo@jmondi.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 4BF9D40004;
 Tue,  1 Oct 2019 14:50:39 +0000 (UTC)
Date: Tue, 1 Oct 2019 16:52:22 +0200
From: Jacopo Mondi <jacopo@jmondi.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 5/5] RFC: drm/atomic-helper: Reapply color
 transformation after resume
Message-ID: <20191001145222.32aapomoqlaxpvbb@uno.localdomain>
References: <20190930222802.32088-1-ezequiel@collabora.com>
 <20190930222802.32088-6-ezequiel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190930222802.32088-6-ezequiel@collabora.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_075056_128456_E80615CD 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: multipart/mixed; boundary="===============5724696589098431261=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5724696589098431261==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zl62uyu5oe5zzls3"
Content-Disposition: inline


--zl62uyu5oe5zzls3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Ezequiel,

On Mon, Sep 30, 2019 at 07:28:02PM -0300, Ezequiel Garcia wrote:
> Some platforms are not able to maintain the color transformation
> state after a system suspend/resume cycle.
>
> Set the colog_mgmt_changed flag so that CMM on the CRTCs in

CMM is the name of the Renesas unit for color enanchement. It should
not be used here as this will apply to all platforms.

> the suspend state are reapplied after system resume.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> This is an RFC, and it's mostly based on Jacopo Mondi's work https://lkml.org/lkml/2019/9/6/498.
>
> Changes from v2:
> * New patch.
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index e41db0f202ca..518488125575 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -3234,8 +3234,20 @@ int drm_atomic_helper_resume(struct drm_device *dev,
>  			     struct drm_atomic_state *state)
>  {
>  	struct drm_modeset_acquire_ctx ctx;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_crtc *crtc;
> +	unsigned int i;
>  	int err;
>
> +	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
> +		/*
> +		 * Force re-enablement of CMM after system resume if any
> +		 * of the DRM color transformation properties was set in
> +		 * the state saved at system suspend time.
> +		 */
> +		if (crtc_state->gamma_lut)

Please note that in my original patch I only took gamma_lut into
account as that's what our CMM supports at the moment, but you should
here consider the degamma_lut and cmt flags in the crtc_state.

> +			crtc_state->color_mgmt_changed = true;
> +	}
>  	drm_mode_config_reset(dev);
>
>  	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> --
> 2.22.0
>

--zl62uyu5oe5zzls3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAl2TaCYACgkQcjQGjxah
VjyNJA//aSwBuTdB7lLcaiEaE+P3RsAcLZl6sS/EGaTO5tsvgJD43qhcW0FyAZdV
8ABNJ3e+W7ZgTzkHWVBvs6Y5eQlE3AvvAhXFPEjL9ca9Y/rRLgcF6mQ8GQCqsYO7
dvBkd1bpWG7XBOO5KzSLSDbIsjDRmDbpFVQHtTWDJZN/LzIqZHoGPZL9Tc7yoAY7
9MW3av52glPOWqTJj9zscg/Y7BWuapCmmPPV97iLUPKVtvN/G+2fgIVxushM2e3K
TJvYsU63CZ5pzKX1U02UBbs0KKsENRRjWCTcGs2gf5xq0WhBs+lC0uZAclNkw/lu
wd5ehPD3CaE2NiBECnHtptxEZE+jMzzP7jmDojYHILG0NqV6pcVVHdZsYK7AE/qb
CfqDtLn6HnbaZZcia7Smp50QpTGY5z46Qe9l15CH/wtzjywwyKyl9GvuEK18ycx5
6iwGZW0PYHJnAQwh0U4F92akAXIOf5xfpW2358jlIr8iwmSE5UgrqA4YcDDPGDfs
7YvBDUBn/Bs0RYUetb/+HI5rcYZsWdBkpL/cHP6y+8yItmdS9IyYlHS6pXxm3X04
dS7tEaUs29GYJKsVshqq7ORctg0pd4ebsSsZeyqTLq7YmzXefjzpHihSvuKt0oMU
pqCdnYKZkFUm70gLJXTHVVjSty7YOBB428DgPlWTFmgNUvVUqec=
=hYRk
-----END PGP SIGNATURE-----

--zl62uyu5oe5zzls3--


--===============5724696589098431261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5724696589098431261==--

