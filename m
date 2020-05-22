Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FD61DE816
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 15:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vx4IJGlz9g9E35Uo30nsnf3WdRWPJqdy837vdaM0Qv4=; b=eqO/xKOuOikca5
	dO7D5WoZi6HHKMYdJI1hZf4uSAFII9jnvUzo5YgI1h9FdlsZxkXnmA0wEadfrxBY5vx+xqCg7XvYR
	6hQC8SpP7niVL7d5HHGXVaakVs19iIj0J0Xl6Df+ay02KQroitOI36wlbLvCoAFDMRxl8GLkzl958
	KsqADHvZI904hn4I50Ub2HMD/Qtd65Hyk2Bn6d6NxraMMKdkEAx75mbPMgP6aaG4U72AqRKD0gNia
	2ZqyeXi1O+Uyz2UgvfPtrxvWuDEBvfJu0DaL1veA4MQkkkHEIH5JSWzBcI55zpjdZZks0+u9CD/wK
	Ee6hJB3ZSn058AkbRx4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7mb-000085-IL; Fri, 22 May 2020 13:32:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7mU-00007R-9k
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 13:32:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5449D2A395E
Message-ID: <9a0a91d50bdaa19378ef21de5c81abeef476429a.camel@collabora.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Helen Koike
 <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 hverkuil@xs4all.nl,  kernel@collabora.com, dafna3@gmail.com,
 sakari.ailus@linux.intel.com,  linux-rockchip@lists.infradead.org,
 mchehab@kernel.org,  laurent.pinchart@ideasonboard.com, Tomasz Figa
 <tfiga@chromium.org>
Date: Fri, 22 May 2020 10:31:56 -0300
In-Reply-To: <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
 <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
 <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_063210_467000_45D186C3 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna, Helen,

On Fri, 2020-05-22 at 14:11 +0200, Dafna Hirschfeld wrote:
> 
> On 21.05.20 00:08, Helen Koike wrote:
> > 
> > On 5/20/20 6:54 PM, Helen Koike wrote:
> > > Hi Dafna,
> > > 
> > > On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> > > > The resize block of rkisp1 always get the input as yuv422.
> > > > Instead of defining the default hdiv, vdiv as macros, the
> > > > code is more clear if it takes the (hv)div from the YUV422P
> > > > info. This makes it clear where those values come from.
> > > > The patch also adds documentation to explain that.
> > > > 
> > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > 
> > > Acked-by: Helen Koike <helen.koike@collabora.com>
> > > 
> > > Thanks!
> > > Helen
> > > 
> > > > ---
> > > >   drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
> > > >   1 file changed, 12 insertions(+), 13 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > index d049374413dc..04a29af8cc92 100644
> > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > @@ -16,9 +16,6 @@
> > > >   #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
> > > >   #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
> > > >   
> > > > -#define RKISP1_MBUS_FMT_HDIV 2
> > > > -#define RKISP1_MBUS_FMT_VDIV 1
> > > > -
> > > >   enum rkisp1_shadow_regs_when {
> > > >   	RKISP1_SHADOW_REGS_SYNC,
> > > >   	RKISP1_SHADOW_REGS_ASYNC,
> > > > @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> > > >   static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > > >   			      enum rkisp1_shadow_regs_when when)
> > > >   {
> > > > -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> > > >   	struct v4l2_rect sink_y, sink_c, src_y, src_c;
> > > >   	struct v4l2_mbus_framefmt *src_fmt;
> > > >   	struct v4l2_rect *sink_crop;
> > > >   	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> > > > +	const struct v4l2_format_info *yuv422_info =
> > > > +		v4l2_format_info(V4L2_PIX_FMT_YUV422P);
> > > >   

Instead of hardcoding this fourcc, is there any way we can
retrieve it from a configured format?

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
