Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C90819ECE6
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 19:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjIlpxcO0vZnX3Wt7VX/VpjnDlXA4PyDR9Sm3eNeVL8=; b=pAsYozxoeHjS2/
	31CXZG/X9h1sx37vWkuYLh4sVHzQRJnAphl36Yd/3Ttw8We3LBNZ04DiHWkbOc05MgcI3FtdfdtH9
	IBhFY2ktEVxZzQqtWxhKneaxj6kVjYiTLvdQrIvbFhYDrpznLLcxVerNWhuIs55lNID1rV4VLCeYS
	G1rv6NEFK9JkQsSciRing9UT2Q+8Ex8YKWg9gK+3za0T5nmU53kAWls1q/IHiZtAOY5TAo7iNMs1F
	6PO4SttcIo2Ging/cTgNOJQe0UCYalUo4rN+lcnxSYNcr9WUJpR4CA5gbMxpJ933WTlThdnHBwArM
	mV9PLOzVyGZ+Hng3pT6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL967-0005v1-EO; Sun, 05 Apr 2020 17:30:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL964-0005DG-9c
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 17:30:13 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3440611C8;
 Sun,  5 Apr 2020 19:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586107801;
 bh=s6FDCX4gt9wfmVcxq5wNwUmrBiTJg7COQxP+wX8LvRE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UPYgK1AVbai93AIGdGX7d0hZLijs3dkH2MOYjdDXeBBXpL/AVD5wcUuU5t0wyopcU
 8joNGPU5B4IcguOHizIH7qbZzBIujFTrrtiivhtfmhd5OMKSAQMQ7oBMqjZAemLU0j
 w8bODQxZVfH2etmAWV1xXn8z+hSFccEH5NM1B9DE=
Date: Sun, 5 Apr 2020 20:29:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
Message-ID: <20200405172952.GI5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
 <7445ddcb-75f5-7792-0807-47c0b0d0d54a@collabora.com>
 <711657f5-005b-fafd-6063-f8c8b61905e7@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <711657f5-005b-fafd-6063-f8c8b61905e7@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103012_487150_C41555D4 
X-CRM114-Status: GOOD (  18.34  )
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
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Sat, Apr 04, 2020 at 02:09:20PM +0200, Dafna Hirschfeld wrote:
> On 30.03.20 22:04, Helen Koike wrote:
> > On 3/28/20 7:56 AM, Dafna Hirschfeld wrote:
> >> RGB formats in selfpath should receive input format as YUV422.
> >> The resizer input format is always YUV422 and therefore
> >> if the capture format is RGB, the resizer should not change
> >> the YUV rations.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
> >>   1 file changed, 12 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> index 8704267a066f..5721eee29ecb 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> @@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>   			&rsz->rkisp1->capture_devs[rsz->id];
> >>   		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
> >>   
> >> -		hdiv = pixfmt_info->hdiv;
> >> -		vdiv = pixfmt_info->vdiv;
> >> +		/*
> >> +		 * The resizer always get the input as YUV422
> >> +		 * If the capture encoding is also YUV, then the resizer should
> >> +		 * change the 4:2:2 sampling to the sampling of the capture
> >> +		 * format (4:2:2 -> 4:2:0 for example).
> >> +		 * If the capture format is RGB then the memory input should
> >> +		 * be YUV422 so we don't change the default hdiv, vdiv
> >> +		 */
> >> +		if (v4l2_is_format_yuv(pixfmt_info)) {
> > 
> > Can't this be moved with && in the outer if statement block?
> 
> Actually the outer statement is not needed at all and can be removed
> since the code return if rsz->fmt_type is RKISP1_FMT_BAYER but
> the resizer format is either bayer or yuv so there is no
> need for the "if (rsz->fmt_type == RKISP1_FMT_YUV)"

This sounds reasonable.

> >> +			hdiv = pixfmt_info->hdiv;
> >> +			vdiv = pixfmt_info->vdiv;
> >> +		}
> >>   	}
> >>   	src_c.width = src_y.width / hdiv;
> >>   	src_c.height = src_y.height / vdiv;
> >>

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
