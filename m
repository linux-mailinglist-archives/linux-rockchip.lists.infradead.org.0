Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861F3186860
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 11:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJdBYAqPLuhlJ39q5Ox2JmtCpvGMNWRNAcU8wuhK0Hg=; b=FFe/d6U3qlPZCO
	bLzi9OVVU6i4WPokjCfiUP+C8TG5IJyebELAsG07OWA2mjMjqEvf18R9HprsBPmqjNrJ2iqx/X1MK
	J7nh2QwDASyykO64eDE2uVP6NZcOlASAWnkoDXFyk1NB3szFlmvlmkV+XOBU7hrIYi0/HE58EAv7M
	pyDwqJjL70TrMVG1BnjChDBE5P9uxiuZfGIGxwfIQSMHxtApeNkrBdw1eSzy9KOyxNFaG5hA3C5+o
	rYnWQ7KSdiYV1+0G02zg9LW1vTSeD10yX1Tt5ZicVHR2U1sz2vnFKZIVQ6czyiLtgnv5jFUii2VSH
	l2r9UWJ+CeeLzSg/BiSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmYG-0002XY-5z; Mon, 16 Mar 2020 10:00:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmYC-0002X2-JX
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 10:00:50 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61A46A3B;
 Mon, 16 Mar 2020 11:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584352842;
 bh=MhKFBXr7qX2BbApNO78j8Sdn8/qcNYJHxKWov/TsZRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VHwx2pQ4h74PyW1eF8NVWYVZkcEDTDLaHnCHZj1/7a8Z7T6g7Cp9VgQEKPUWZ4LRe
 XK/zRmg0JLkbIZh7djhvx0DZZvgy96SywFrgqWfWPru1s7OvccQQy46S0tpr0HHkeX
 njDIbE3dy+V1u6RA0doIjahOm+RXJoBrWrd+tZbs=
Date: Mon, 16 Mar 2020 12:00:36 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: v4l2-common: Add BGR666 to v4l2_format_info
Message-ID: <20200316100036.GR4732@pendragon.ideasonboard.com>
References: <20200316070123.2434-1-dafna.hirschfeld@collabora.com>
 <20200316072214.GA16123@pendragon.ideasonboard.com>
 <31efd58f-1ab1-d3d0-e4b9-ea9072e608fa@collabora.com>
 <20200316081516.GK4732@pendragon.ideasonboard.com>
 <401a9aca-f61f-d818-28dc-0e4cf7c2ac20@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <401a9aca-f61f-d818-28dc-0e4cf7c2ac20@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_030048_788939_FA3A07FC 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Mon, Mar 16, 2020 at 09:59:56AM +0100, Dafna Hirschfeld wrote:
> On 16.03.20 09:15, Laurent Pinchart wrote:
> > On Mon, Mar 16, 2020 at 09:07:16AM +0100, Dafna Hirschfeld wrote:
> >> On 16.03.20 08:22, Laurent Pinchart wrote:
> >>> On Mon, Mar 16, 2020 at 08:01:23AM +0100, Dafna Hirschfeld wrote:
> >>>> Add V4L2_PIX_FMT_BGR666 to the format table.
> >>>>
> >>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>>> ---
> >>>> Hi,
> >>>> BGR66 is needed for the rkisp1 driver.
> >>>> Currently it crashes since the call to
> >>>> v4l2_format_info returns NULL.
> >>>>
> >>>>    drivers/media/v4l2-core/v4l2-common.c | 1 +
> >>>>    1 file changed, 1 insertion(+)
> >>>>
> >>>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> >>>> index d0e5ebc736f9..d7f82b2aa22f 100644
> >>>> --- a/drivers/media/v4l2-core/v4l2-common.c
> >>>> +++ b/drivers/media/v4l2-core/v4l2-common.c
> >>>> @@ -253,6 +253,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
> >>>>    		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>>>    		{ .format = V4L2_PIX_FMT_RGB565,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>>>    		{ .format = V4L2_PIX_FMT_RGB555,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>>> +		{ .format = V4L2_PIX_FMT_BGR666,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>>
> >>> Isn't BGR666 stored in 3 bytes per pixel ?
> >>
> >> Hi, I also discussed it with Helen. From the documentation we
> >> understood that it uses 4 bytes and the last one is empty.
> >> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/pixfmt-rgb.html
> > 
> > Would you then also understand V4L2_PIX_FMT_RGB565 to use 4 bytes with
> > the last 2 bytes empty ? :-)
>
> hmm, the formats between BGR24 and XRGB32 in the docs table have vertical lines crossing all 4 bytes so we understood that they are all 4 bytes. Isn't it?
> Format RGB565 doesn't have does vertical lines on the last two bytes which means it uses 2. At least that is what we understood.

I stand corrected, looking at the drivers implementing
V4L2_PIX_FMT_BGR666, they all handle it as a 32bpp format.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> > I agree that the documentation is somehow ambiguous and should be fixed.
> > Patches are welcome ;-)

I think adding explicit '-' or 'x' in the cells that contain "don't
care" bits would help avoiding confusion.

> >>>>    
> >>>>    		/* YUV packed formats */
> >>>>    		{ .format = V4L2_PIX_FMT_YUYV,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 2, .vdiv = 1 },

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
