Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4371DEB35
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 16:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EWa9vlmc95KEGW5MTZsmFECh2OzzQt/SyBrUNWW8U8=; b=O3F9OyO3uUgWCU
	YAzcAHw5gpgkmWOIAgQYDedL8cqZYl/8+EY2oIk/QF54PWNcl8R8CYycsL/+JnixSz5z8DTIGJ8Hc
	WqUWyE4Ypez8q0ugD7xqxTNWjyVcfhJ8Kc4pxWLcnOI/P3n9WFHgKEDV12qKMkIOFFDHyIWz6zw+8
	IFT+uzRzw5aiKcu5S/wca6uOcPSmFdnMDPKVtzVyM3UsRShsDxUsIKg1Du1d19PdCRovNimkq2ouh
	+jZGOd9cQkp6+LzMML/d54HlPyc4rQDamo+LgljScgFH3oKHV2ar5jKkBPNLOxCrXzsRtBs0amRDT
	bk/9jqrC9ZSDnY/Yh4tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc99B-000485-U9; Fri, 22 May 2020 14:59:41 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc998-00047B-GA
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 14:59:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4A00D24D;
 Fri, 22 May 2020 16:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590159572;
 bh=wl3XZ4iF8yigNM+6KU0d0gMl8gYbqnnjKiRHhQx2N6A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Td5N5XJeSVjTOElXdBMx7WbVJz+x/RgkSF6KxCXJnsCgKZA+7tUWnv/aMObNMskwM
 98/H+PfJKS5LMJP2u5mTnGUOm7Fezoz++KoaS9wfY6qrkB/N1C2q3h64SrDqilSt0v
 LasW75aPuaZqz/0cPilzl5vjyrUAznFGi0EAeeJQ=
Date: Fri, 22 May 2020 17:59:20 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
Message-ID: <20200522145920.GC5824@pendragon.ideasonboard.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
 <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
 <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
 <20200522135750.GA5824@pendragon.ideasonboard.com>
 <48b7ac22-a8c3-a5e9-56b9-e81e6e072251@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48b7ac22-a8c3-a5e9-56b9-e81e6e072251@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_075938_686092_5CB65658 
X-CRM114-Status: GOOD (  23.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mchehab@kernel.org, dafna3@gmail.com, Tomasz Figa <tfiga@chromium.org>,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Fri, May 22, 2020 at 04:54:24PM +0200, Dafna Hirschfeld wrote:
> On 22.05.20 15:57, Laurent Pinchart wrote:
> > On Fri, May 22, 2020 at 02:11:22PM +0200, Dafna Hirschfeld wrote:
> >> On 21.05.20 00:08, Helen Koike wrote:
> >>> On 5/20/20 6:54 PM, Helen Koike wrote:
> >>>> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> >>>>> The resize block of rkisp1 always get the input as yuv422.
> >>>>> Instead of defining the default hdiv, vdiv as macros, the
> >>>>> code is more clear if it takes the (hv)div from the YUV422P
> >>>>> info. This makes it clear where those values come from.
> >>>>> The patch also adds documentation to explain that.
> >>>>>
> >>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>>>
> >>>> Acked-by: Helen Koike <helen.koike@collabora.com>
> >>>>
> >>>>> ---
> >>>>>    drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
> >>>>>    1 file changed, 12 insertions(+), 13 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>>>> index d049374413dc..04a29af8cc92 100644
> >>>>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>>>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>>>> @@ -16,9 +16,6 @@
> >>>>>    #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
> >>>>>    #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
> >>>>>    
> >>>>> -#define RKISP1_MBUS_FMT_HDIV 2
> >>>>> -#define RKISP1_MBUS_FMT_VDIV 1
> >>>>> -
> >>>>>    enum rkisp1_shadow_regs_when {
> >>>>>    	RKISP1_SHADOW_REGS_SYNC,
> >>>>>    	RKISP1_SHADOW_REGS_ASYNC,
> >>>>> @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> >>>>>    static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>>>>    			      enum rkisp1_shadow_regs_when when)
> >>>>>    {
> >>>>> -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> >>>>>    	struct v4l2_rect sink_y, sink_c, src_y, src_c;
> >>>>>    	struct v4l2_mbus_framefmt *src_fmt;
> >>>>>    	struct v4l2_rect *sink_crop;
> >>>>>    	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> >>>>> +	const struct v4l2_format_info *yuv422_info =
> >>>>> +		v4l2_format_info(V4L2_PIX_FMT_YUV422P);
> >>>>>    
> >>>>>    	sink_crop = rkisp1_rsz_get_pad_crop(rsz, NULL, RKISP1_RSZ_PAD_SINK,
> >>>>>    					    V4L2_SUBDEV_FORMAT_ACTIVE);
> >>>>> @@ -386,8 +384,9 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>>>>    	src_y.width = src_fmt->width;
> >>>>>    	src_y.height = src_fmt->height;
> >>>>>    
> >>>>> -	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
> >>>>> -	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
> >>>>> +	/* The input format of the resizer is always yuv422 */
> >>>>> +	sink_c.width = sink_y.width / yuv422_info->hdiv;
> >>>>> +	sink_c.height = sink_y.height / yuv422_info->vdiv;
> >>>>>    
> >>>>>    	/*
> >>>>>    	 * The resizer is used not only to change the dimensions of the frame
> >>>>> @@ -395,17 +394,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>>>>    	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> >>>>>    	 * streams should be set according to the pixel format in the capture.
> >>>>>    	 * The resizer always gets the input as YUV422. If the capture format
> >>>>> -	 * is RGB then the memory input should be YUV422 so we don't change the
> >>>>> -	 * default hdiv, vdiv in that case.
> >>>>> +	 * is RGB then the memory input (the resizer output) should be YUV422
> >>>>> +	 * so we use the hdiv, vdiv of the YUV422 info in this case.
> >>>>>    	 */
> >>>>>    	if (v4l2_is_format_yuv(cap->pix.info)) {
> >>>>> -		hdiv = cap->pix.info->hdiv;
> >>>>> -		vdiv = cap->pix.info->vdiv;
> >>>>> +		src_c.width = cap->pix.info->hdiv;
> >>>>> +		src_c.height = cap->pix.info->vdiv;
> >>>
> >>> Sorry, I just noticed you are assigning hdiv and vdiv directly to width and height, which looks wrong.
> >>>
> >>> It should be:
> >>>
> >>> src_c.width = src_y.width / cap->pix.info->hdiv;
> >>> src_c.height = src_y.height / cap->pix.info->vdiv;
> >>
> >> autch, thanks for finding it,  I probably concentrated only on testing the new RGB formats
> > 
> > Please make sure to test all supported formats :-)
> 
> Yes, I don't how I missed that :/
> 
> > I really, really recommend writing a small set of test scripts that will
> > automate the tests for you. It can be as simple as wrapping media-ctl +
> > yavta (or v4l2-ctl), or the libcamera cam utility if it offers all the
> > features you need, and run them for all supported formats.
> 
> We already have python scripts that wrap media-ctl/v4l2-ctl
> https://gitlab.collabora.com/dafna/v4l-utils/-/blob/rkisp1-simult-stream/contrib/test/test-rkisp1.py
> 
> For example, you can run
> python3 test-rkisp1.py -t CUSTOM_RKISP1_TEST_stream -o /root -m YUYV8_2X8 -p sp -P YU12 -S  -v -c --isp-dim 1300x1500 --resizer-dim 1200x700
> 
> Then:
> '-m YUYV8_2X8' is the media bus for the output of the isp
> '-p sp' is for streaming from selfpath video node
> '-P YU12' is for format yuv420p
> '--sip-dim 1300x1500' is the values to set the sensor and the crop of the sink pad of the isp entity
> '--resizer-dim 1200x700' is the output dimensions of the resizer

I recommend wrapping that into a script that will test all supported
formats, and give a pass/fail result. For instance, we have developed
unit test scripts for the Renesas VSP (a memory-to-memory video
processing engine supported by a V4L2 driver), available at
http://git.ideasonboard.com/renesas/vsp-tests.git, that test lots of
different pipelines, including checks on the output image.

Checking the output image is more difficult in your case, as the input
to the rkisp1 is a camera sensor and not memory, but maybe there's a
test pattern mode that could be leveraged ?

In any case, validation of the image content is likely a long term
project, short term I recommend test cases that will try all the
supported formats in various resolutions, to ensure there's no crash,
and you can limit the verification to the captured buffer size for
instance.

> >>>>> +	} else {
> >>>>> +		src_c.width = src_y.width / yuv422_info->hdiv;
> >>>>> +		src_c.height = src_y.height / yuv422_info->vdiv;
> >>>>>    	}
> >>>>>    
> >>>>> -	src_c.width = src_y.width / hdiv;
> >>>>> -	src_c.height = src_y.height / vdiv;
> >>>>> -
> >>>>>    	if (sink_c.width == src_c.width && sink_c.height == src_c.height) {
> >>>>>    		rkisp1_rsz_disable(rsz, when);
> >>>>>    		return;
> >>>>>

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
