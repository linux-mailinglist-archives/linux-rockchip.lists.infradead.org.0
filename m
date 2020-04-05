Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C1819ED51
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 20:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KetmZekIYgcMRiflgWwVzCeGw/p56e6gFNcLfV+CHQw=; b=MEi3hIWjBHL/TG
	z0f89dqUnSpDc/y7Ficnx2nc61oDwz0iLza/YDHug4eU0gqodl9qW6iyxr7wIGOqZWz+2Ao4uzx3r
	xmJnhm08ghz/5UsP86piYzI05b2Z/7FljyhQiYe3+wmC0IRa1WZyxTGRlkpNhStqZW2iPHzc2pYJJ
	NDUZJ7BUhDaBUnnWO4MbQXcMgFilAH5AB5HUVFvwlnrIQufWgGUL0ywRLrziKcA+7zDbQKwE45Yck
	YyOts3Hi/JJBL/gD/OZxVMs9CO+kmtBHy+wtHijbUjyzp6AzLJrNB9NmNxnLas3tBXk5zZy2Exleh
	jnDWXseVjL9MbujN9lag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9mj-0003Iu-Nv; Sun, 05 Apr 2020 18:14:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9mh-0003IC-HE
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 18:14:17 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14037312;
 Sun,  5 Apr 2020 20:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586110454;
 bh=G41icyBabNRTmDS6CFNDpAEc45C/INYfp/YvDRzSkw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCe6ySqEGsO4may90v4XhqcnR4QM9xrU6RPstysUg54fxR360KBjuGCE1MgBFwZ07
 cTbfcpg/iekio/h7MCruwsBB51Wm+CNlKeoup3GafEfJopBh49fdx/LTlI73xiF8Ev
 MlIivkRnQz9jMlCLY1RRSAVpNMLFr06L/DOezqK0=
Date: Sun, 5 Apr 2020 21:14:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 3/5] media: staging: rkisp1: cap: support uv swap only
 for semiplanar formats
Message-ID: <20200405181405.GP5846@pendragon.ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402190419.15155-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_111415_809461_948C7C37 
X-CRM114-Status: GOOD (  13.02  )
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

On Thu, Apr 02, 2020 at 09:04:17PM +0200, Dafna Hirschfeld wrote:
> The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is relevant only
> for semiplanar formats, therefore the uv swap can be supported
> through this register only for semiplanar formats.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 84a3cf565106..fa2849209433 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -37,6 +37,10 @@
>  
>  #define RKISP1_MIN_BUFFERS_NEEDED 3
>  
> +#define RKISP1_IS_SEMI_PLANAR(write_format)				\
> +	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
> +	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
> +
>  enum rkisp1_plane {
>  	RKISP1_PLANE_Y	= 0,
>  	RKISP1_PLANE_CB	= 1,
> @@ -429,7 +433,8 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
>  		     cap->config->mi.cr_size_init);
>  
>  	rkisp1_irq_frame_end_enable(cap);
> -	if (cap->pix.cfg->uv_swap) {
> +	if (RKISP1_IS_SEMI_PLANAR(cap->pix.cfg->write_format) &&

As this is the mp config path, I suppose write_format can only be
RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA, right ? You could then write

	if (cap->pix.cfg->write_format == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA &&

> +	    cap->pix.cfg->uv_swap) {
>  		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
>  		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
> @@ -466,7 +471,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
>  	rkisp1_write(rkisp1, cap->sp_y_stride, RKISP1_CIF_MI_SP_Y_LLENGTH);
>  
>  	rkisp1_irq_frame_end_enable(cap);
> -	if (cap->pix.cfg->uv_swap) {
> +	if (RKISP1_IS_SEMI_PLANAR(cap->pix.cfg->write_format) &&

Same here with RKISP1_MI_CTRL_SP_WRITE_SPLA.

Another option would be to check the number of planes from
v4l2_format_info, which could lead to simpler to read code.

> +	    cap->pix.cfg->uv_swap) {
>  		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
>  
>  		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
