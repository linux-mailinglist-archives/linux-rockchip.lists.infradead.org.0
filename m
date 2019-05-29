Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F9F2D76B
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idBXHZMTlwJpGEOdGWywGuNE+tcftly6PClDPSh7icY=; b=k75OblxJz0BKwv
	HjafFqqJynaKv1JpPFvTYLWHvV1IOihAsaD8xzZ8BfxXkFrJDVwJwskJxURJSP1B8EYCzwJcq7xbU
	RZYTvfy//js3P8j9CcP1vWTVlMi2OdZfzg7IGV6nbrFfB35EI3IFCBAw/tdeJRhIX/DUwTDOj+oBa
	h1bo1ffrdFyZFGsmpi4beFUu2O6OSVJbmRLOnFJfKg6BzCXyqYwH4fzxFCmqpKdsWx3cNH+tXqh2v
	K4aKsivDcO4EY25x4fWus8pkAJNEjpM97FFXeIRr5aQ3Ww+Dh3hbAeRpUzllWMEOeGIJLiTR4dAnn
	1TYclCHWl8dRO95cOb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtgQ-0003xn-Ug; Wed, 29 May 2019 08:11:38 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtgM-0003x0-TC
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:11:37 +0000
Received: from [IPv6:2001:983:e9a7:1:352c:d076:e7aa:19ae]
 ([IPv6:2001:983:e9a7:1:352c:d076:e7aa:19ae])
 by smtp-cloud7.xs4all.net with ESMTPA
 id Vtg4h3fGP3qlsVtg6hs7cd; Wed, 29 May 2019 10:11:22 +0200
Subject: Re: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding on
 RK3328
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-17-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <2ef056a2-e9dc-52b1-855b-2bef759af9b6@xs4all.nl>
Date: Wed, 29 May 2019 10:11:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528170232.2091-17-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMNOtP4e/XV/W7js+aDpcaAsOGhmRTm6BuvfYfFnsSyw4jJP6kb7xMVKrSZuUN4GaDQD1ZSXVHtDNy/R+83SyouWvcNijeoHgBNCa8eU8dPdBof7Kab5
 V1hvhRtOlOGaHYwaTF/Y/XTblZe5Fu1/ii8O+fNkEtYGEiAvvITab3yg9XMNEtW8hk2k+99xmJ1HBOKunDBRVGwTbmcbwv3fCI7fYJz6SCQ3dxnMl/SA535h
 L/zcPpp6sZzoI/yHyLQXuVBKVpb7OlHdt2wYutjCV55e/qY/rxTCEkLZuU2yKjkb+j633+ATuMfaNj1ZghqPZXFmFghNFCrQtDnsb+bv5hXQo+bsifv568kZ
 bWbDZrkLqjGaojzzpgGDhHLiLx+SeOA75PHcGb0QcL83pTi6fIyULtocEdb1S2zhgtYE6x6bP++8TSqGH5ftvadrYjncP7PQIWoDA8XNSlQD7CM1yZonEdUU
 3196CcTVzojwiHoaUZIN49r5PZOyxKZ06q8nvqx3AKJ9+0Rs8ej8mYQlIlDQIWtNuysi19aUrSnnR0OQxkoshoFP+Wsc1HJWwsAlDeca0udZ0ZmVak2E3X9E
 kIzxFOHzku+A0kNcGHy9ClBlS3dWZv5Yc1j8ELfEeB0rtA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_011135_100997_3E485CA3 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/28/19 7:02 PM, Ezequiel Garcia wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add necessary bits to support MPEG2 decoding on RK3328.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> Changes from v5:
> * New patch.
> 
>  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c   | 12 ++++++++++++
>  .../staging/media/rockchip/vpu/rockchip_vpu_drv.c    |  1 +
>  drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h |  1 +
>  3 files changed, 14 insertions(+)
> 
> diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> index 2b3689968ef4..341f8d69c33d 100644
> --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> @@ -175,3 +175,15 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
>  	.clk_names = {"aclk", "hclk"},
>  	.num_clocks = 2
>  };
> +
> +const struct rockchip_vpu_variant rk3328_vpu_variant = {
> +	.dec_offset = 0x400,
> +	.dec_fmts = rk3399_vpu_dec_fmts,
> +	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
> +	.codec = RK_VPU_MPEG2_DECODER,
> +	.codec_ops = rk3399_vpu_codec_ops,
> +	.vdpu_irq = rk3399_vdpu_irq,
> +	.init = rk3399_vpu_hw_init,
> +	.clk_names = {"aclk", "hclk"},
> +	.num_clocks = 2
> +};
> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> index b94ff97451db..2e22009b6583 100644
> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> @@ -419,6 +419,7 @@ static const struct v4l2_file_operations rockchip_vpu_fops = {
>  
>  static const struct of_device_id of_rockchip_vpu_match[] = {
>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
> +	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },

This new compatible string should be documented in
Documentation/devicetree/bindings/media/rockchip-vpu.txt as well.

I'll take patches 1-15 and drop this one. This patch can be merged once
the bindings file is updated as well.

Regards,

	Hans

>  	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
>  	{ /* sentinel */ }
>  };
> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
> index 6cecb528f994..3d6b97af90fb 100644
> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
> @@ -79,6 +79,7 @@ enum rockchip_vpu_enc_fmt {
>  };
>  
>  extern const struct rockchip_vpu_variant rk3399_vpu_variant;
> +extern const struct rockchip_vpu_variant rk3328_vpu_variant;
>  extern const struct rockchip_vpu_variant rk3288_vpu_variant;
>  
>  void rockchip_vpu_watchdog(struct work_struct *work);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
