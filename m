Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBBA19ED33
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 19:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbWJe9v7li+DYzgY5NEzmo7jQupATQbzMvMv0z3TEZI=; b=VOH/6Ugw46LQ5F
	VN4BM8GmWrKaj90gSQ+TfpsJaP4wnF6XghbPw84wF6Z4SH9kaIXeSZ5wVP+PAhCqBzp8IUV40eHDX
	VE2XdX0lW2i5xwPV8ZJoRfjymdVm/GIILidJ08VG6f9zh16/HKDK9RRV/bzvyEUMn47xMX5xEKmY5
	2DS9xvLSRAV/o3bMrxwaTm/ng64+EC+jjl46W9IcF+7pAkAG20aJI1DRxjdI53Crap79oy0Gu4hYj
	Gywbcz+OyLbtE/HkP4NO42b3mhgMxqyZ7idhcuJipkDYHcckoy1z9iw6IroJO/KwdnZ1fi7rmpYqT
	8IccGRa/NXDS5+18LJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Wp-0001KB-E8; Sun, 05 Apr 2020 17:57:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Wm-0001JK-MC
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 17:57:50 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1A0A1312;
 Sun,  5 Apr 2020 19:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586109467;
 bh=3riq+UGIDUwaB3bskq6W163D9liaizhjELFGstR3Z/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jvhv0pkrbAHeinT/xpWw1eXsmTZSG5bqFJr1Xtcjkb+maVp9gsAq12m4lJ5R44UTs
 LO0CWQADNqgcFudTW6WXqJ7QULClkW2Cp4pDCniCWVJ2JIaPZV8W32WtzgaGmJ4YiW
 EY5aCIzBxet8oRmdohUteZ3kjtWFzl/n+B2Woh8o=
Date: Sun, 5 Apr 2020 20:57:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 1/5] media: staging: rkisp1: cap: cleanup in mainpath
 config for uv swap format
Message-ID: <20200405175738.GN5846@pendragon.ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402190419.15155-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_105748_870643_97076035 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Thu, Apr 02, 2020 at 09:04:15PM +0200, Dafna Hirschfeld wrote:
> The value RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP equals BIT(0),
> Therefore when writing it to the register there is no need to mask
> it first with ~BIT(0).
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 45d237a77ca4..5700d7be2819 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -432,8 +432,7 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  	if (cap->pix.cfg->uv_swap) {
>  		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
> -		reg = (reg & ~BIT(0)) |
> -		      RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> +		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;

I'd write this

		reg |= RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  		rkisp1_write(rkisp1, reg, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  	}
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
