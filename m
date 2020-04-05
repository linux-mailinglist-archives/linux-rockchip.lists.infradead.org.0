Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6461A19EE78
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 01:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0I0sA33dkqpiq8zfSRsi1sCu1uopcG/WW6J45Q0u90=; b=nWH1mg7FVCAQhD
	ZZCqiaFF8suutNp3L5FO1kEpa8ADzCWJo+dpz34CG+TFWejngCHWDw1YovayPTlDBnqubs60tglvB
	T+F7BQj5tcOgnFvfL0sQ4+Q2ouLOKNHwAKaN45hQMDcidsaWAejKCq3jTbwpVjofTx+ZHDKmQnEyR
	Bc2oG0Af76uB3xCHZbZO3GRkXARJgfzAV05y7pAbyPgraU9QXLdfu/IV8hLXGrJQyxWJHCL9cqnKl
	GPcbgkDEc4qJRSo7hwtWAoM3HPvkyPMTcPi7FfpGnTvQJYtGGeWx2kd0kJ4nCRlFqjCvhpD1DmckH
	07iEJYXAOwWAuuijk5iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLEG6-0002DO-AL; Sun, 05 Apr 2020 23:00:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLEG2-0002CT-CV
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 23:00:51 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 73B45312;
 Mon,  6 Apr 2020 01:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586127646;
 bh=1nm8g4uUajHc8yxwMII80sm9goTSuR4xERYLGYq2eas=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J1lZPDIMsu5G/T1p0GvHo0jbk1SM3WHZVlUZu9tbgLv5tJGLVrPrCi8GfOlyNa1Ix
 cgcJBvbCdibWv62ZT7QY+trmvMymKSi0e/uEuRMogyEZDrFmQnvvA4mYVj4AyP0wbb
 Zz1nqSgGrwwG9WUzAG89x5ifGu73vIwTqHXJcO/U=
Date: Mon, 6 Apr 2020 02:00:37 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: v4l2-common: change the pixel_enc of
 V4L2_PIX_FMT_GREY to YUV
Message-ID: <20200405230037.GT5846@pendragon.ideasonboard.com>
References: <20200323173618.14058-1-dafna.hirschfeld@collabora.com>
 <9304066ca10c9ccdf8a5fd88866425a5f45a330a.camel@collabora.com>
 <ef6fd691-c8ca-9408-76b4-e47aca0fc9b4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef6fd691-c8ca-9408-76b4-e47aca0fc9b4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_160050_573908_9BA2073E 
X-CRM114-Status: GOOD (  13.54  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Tue, Mar 31, 2020 at 09:20:49AM +0200, Dafna Hirschfeld wrote:
> On 30.03.20 20:22, Ezequiel Garcia wrote:
> > Hi Dafna,
> > 
> > Nice catch, thanks a lot.
>
> Hi, It was actually Helen's idea,
> 
> > On Mon, 2020-03-23 at 18:36 +0100, Dafna Hirschfeld wrote:
> >> V4L2_PIX_FMT_GREY format is Ycbcr format without
> > 
> > A nitpick s/Ycbcr/YCbCr. Maybe Hans can amend
> > this when applying.
> > 
> > It's no big deal anyway.
> > 
> > Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> > 
> >> the color data, therefore its pixel_enc should
> >> set to V4L2_PIXEL_ENC_YUV.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>
> Suggested-by: Helen Koike <helen.koike@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> >> ---
> >>   drivers/media/v4l2-core/v4l2-common.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> >> index d0e5ebc736f9..054f2e607dff 100644
> >> --- a/drivers/media/v4l2-core/v4l2-common.c
> >> +++ b/drivers/media/v4l2-core/v4l2-common.c
> >> @@ -250,7 +250,6 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
> >>   		{ .format = V4L2_PIX_FMT_RGBA32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_ABGR32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_BGRA32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >> -		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_RGB565,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_RGB555,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   
> >> @@ -274,6 +273,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
> >>   		{ .format = V4L2_PIX_FMT_YUV420,  .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 2 },
> >>   		{ .format = V4L2_PIX_FMT_YVU420,  .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 2 },
> >>   		{ .format = V4L2_PIX_FMT_YUV422P, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 1 },
> >> +		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   
> >>   		/* YUV planar formats, non contiguous variant */
> >>   		{ .format = V4L2_PIX_FMT_YUV420M, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 3, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv = 2, .vdiv = 2 },

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
