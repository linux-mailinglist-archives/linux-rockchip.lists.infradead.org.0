Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B0C1DA660
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 02:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxfiEmiNFVAcHbOZiZ13S8wIlJK1Rvkkvko/0g4cOIs=; b=o0RDyBLHnM9ziB
	yp7pkKE4ACv+EFUDBJXfaCwutHYZxOQ6zFC0Ax80SfoMItvbpmt6GgUHnW9zUXdrc9mgApuqtukF0
	4pzb5+F2cXm2rY+UTEfnDFLTM13/wX1yBJqUsLg7wWZ/ejtvY+BvkWxIhg9lDb++oWLrvzE2fKICT
	h703eMOaug7xLan/jR3xLLiXoh/1siKSMDlDG+vT8O+66Q4ImwGRreiFAxDRiuIdjhSeUkjqYufFz
	OnHavIG543sDAGUSIqSFz/3hHSx9Db08HzD0s6BMYGAhk04gk3nEg/R9fD3cJl2X6RddwitthKxY/
	nAgvrYDcTqIOT1g3YvqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCUV-0003Jn-3n; Wed, 20 May 2020 00:21:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCUS-0003JK-5I
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 00:21:45 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 80AD730C;
 Wed, 20 May 2020 02:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589933649;
 bh=lN9j4TD+pexRL36fxRUal43EYh8cS8fweQcj3PHolgY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ME+MmO5xXonNfOaDOwfryQQsFek+4FPLsCL8Uw8CDaNkPnGVOhnzj/905t+T0OyXo
 riFtc7WOQ5YuuJa/i1B4CEy4T+atlHaD1P949xsmrC3NptfhC5AoLnIDhcsNLLZgYk
 +uCuodYWHdVomUceDOQF/2oNauI7+LH4rPWkWUUk=
Date: Wed, 20 May 2020 03:13:56 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: set more precise size errors in
 debugfs
Message-ID: <20200520001356.GL3820@pendragon.ideasonboard.com>
References: <20200514142102.16111-1-dafna.hirschfeld@collabora.com>
 <d78fd01c-6044-4c09-dc44-9df449eb051e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d78fd01c-6044-4c09-dc44-9df449eb051e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_172144_358299_154B0A97 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mchehab@kernel.org, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna and Helen,

On Tue, May 19, 2020 at 01:17:13PM -0300, Helen Koike wrote:
> On 5/14/20 11:21 AM, Dafna Hirschfeld wrote:
> > When a size error is signaled, it is possible to read a register
> > to see where the error comes from. So, in debugfs the general
> > error 'pic_size_err' can be replaced with 3 more precise errors.
> > 
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  drivers/staging/media/rkisp1/rkisp1-common.h | 4 +++-
> >  drivers/staging/media/rkisp1/rkisp1-dev.c    | 8 ++++++--
> >  drivers/staging/media/rkisp1/rkisp1-isp.c    | 7 ++++++-
> >  3 files changed, 15 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> > index 0c4fe503adc9..95d54306bae6 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> > +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> > @@ -226,7 +226,9 @@ struct rkisp1_resizer {
> >  struct rkisp1_debug {
> >  	struct dentry *debugfs_dir;
> >  	unsigned long data_loss;
> > -	unsigned long pic_size_error;
> > +	unsigned long outform_size_error;
> > +	unsigned long is_size_error;
> 
> I would just do s/is/img_stabilization
> 
> otherwise it is easy to read it as a verb, and it feels it's a boolean, and not a counter.
> 
> With this:
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>

With that change,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> > +	unsigned long inform_size_error;
> >  	unsigned long mipi_error;
> >  	unsigned long stats_error;
> >  	unsigned long stop_timeout[2];
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > index 9ac38bafb839..2298d3ae5950 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > @@ -438,8 +438,12 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> >  	}
> >  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
> >  			     &debug->data_loss);
> > -	debugfs_create_ulong("pic_size_error", 0444,  debug->debugfs_dir,
> > -			     &debug->pic_size_error);
> > +	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> > +			     &debug->outform_size_error);
> > +	debugfs_create_ulong("is_size_error", 0444,  debug->debugfs_dir,
> > +			     &debug->is_size_error);
> > +	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
> > +			     &debug->inform_size_error);
> >  	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
> >  			     &debug->mipi_error);
> >  	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > index dc2b59a0160a..a7e5461e25a5 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > @@ -1123,8 +1123,13 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
> >  	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
> >  		/* Clear pic_size_error */
> >  		isp_err = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ERR);
> > +		if (isp_err & RKISP1_CIF_ISP_ERR_INFORM_SIZE)
> > +			rkisp1->debug.inform_size_error++;
> > +		if (isp_err & RKISP1_CIF_ISP_ERR_IS_SIZE)
> > +			rkisp1->debug.is_size_error++;
> > +		if (isp_err & RKISP1_CIF_ISP_ERR_OUTFORM_SIZE)
> > +			rkisp1->debug.outform_size_error++;
> >  		rkisp1_write(rkisp1, isp_err, RKISP1_CIF_ISP_ERR_CLR);
> > -		rkisp1->debug.pic_size_error++;
> >  	} else if (status & RKISP1_CIF_ISP_DATA_LOSS) {
> >  		/* keep track of data_loss in debugfs */
> >  		rkisp1->debug.data_loss++;
> > 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
