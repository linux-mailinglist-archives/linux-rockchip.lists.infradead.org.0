Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99521A82BE
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 14:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o7pJhrWpQtUopOr2zM8wLE+jMh/ELoLdpVfBrIJgx8=; b=d25my5bNHpLpww
	/TV6wV5SGGlVogopFLp++j9iire+cbnR5WBXMoe2G8rMYgWEvl6zJrSyybuWqdW/gJIgCGy8EhnOe
	yYj4VYn4te6WFTv3SnGdyfri38cJB84fkQM5sGglHdatg5bji88Rt8e+YENUyfokVm5oFbtRWF9oN
	A4Fc9TyOaIPIp/HhuZBo/D/RAd8phtIEPAZ36TcYNfSg2lrQe0qhhFFJOLRe1LTRaV5YxYOhQOnaA
	wntDLUtjJuJcjxDjwm1ddjiIDX1daRt8Ap8PCacORhHpPe/rb0TfA9ivBUD43WVOmzIJJnZZDUEcj
	crELGnMJDZ3ITpGCWF3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Uk3-0007Lf-H6; Wed, 04 Sep 2019 12:50:31 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Uk0-0007Kh-Qm
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 12:50:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 89EB928B992
Message-ID: <5e4b569ff2e8a36a828f3623e71943bd23e795b5.camel@collabora.com>
Subject: Re: [PATCH 3/4] media: hantro: Add helper for the H264 motion
 vectors allocation
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org
Date: Wed, 04 Sep 2019 09:50:16 -0300
In-Reply-To: <1567592270.3041.4.camel@pengutronix.de>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <20190903181711.7559-4-ezequiel@collabora.com>
 <1567592270.3041.4.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_055028_998919_D2EABC65 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 12:17 +0200, Philipp Zabel wrote:
> On Tue, 2019-09-03 at 15:17 -0300, Ezequiel Garcia wrote:
> > Introduce a helper to allow easier enablement of the post-processing
> > feature. No functional changes intended.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  drivers/staging/media/hantro/hantro.h      | 6 ++++++
> >  drivers/staging/media/hantro/hantro_v4l2.c | 4 ++--
> >  2 files changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> > index deb90ae37859..e8872f24e351 100644
> > --- a/drivers/staging/media/hantro/hantro.h
> > +++ b/drivers/staging/media/hantro/hantro.h
> > @@ -381,4 +381,10 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
> >  	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> >  }
> >  
> > +static inline unsigned int
> > +hantro_h264_buffer_extra_size(unsigned int width, unsigned int height)
> > +
> > +	return 128 * MB_WIDTH(width) * MB_HEIGHT(height);
> > +}
> 
> This doesn't seem to be used or modified by patch 4 at all?
> 

Oh, thanks for spotting this. Indeed, this patch is superflous.
The helper was used, but then after cleaning-up hantro_postproc.c
I realized it wasn't needed.

We can drop this one, but OTOH hiding the H264 extra size seems
a nice cleanup. Perhaps Jonas can grab this patch as part
of his improvements series.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
