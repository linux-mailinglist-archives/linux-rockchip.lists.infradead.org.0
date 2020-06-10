Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC671F5A4F
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjyRwi7rk6axM052mXgtUXBNunRG1K4Lee72hwgK0yY=; b=pFBUbklhZXo3m6
	EdBkx5T1LEb7NPD4mPzqYDTRNZnTLjpvl/2Mam3jKMRq61w0Vln6roUH5daif02T20YtqE8qc0o/A
	he7Y7QFcpn/jKi0fNqYM1g1cwuMfBNGamb5SAkVOYqv2awMdF2x2iBJAOzucM2Kc80jPyYb5XGsSC
	ZrHnh26AFemRLWR9AgtG4AfKX8uYxwaA8L6vYJCIBi2gI6Wzx3ZTQdkx9tS/Rt/1c3pYAr/KXtCTH
	k06Bk8YzHRtqyrAk8dnDyiq74rEbCFX7HodjvY/DPmH+WOURzjdo8OBsfoarTuUs+nr5QIKy5XBWJ
	ZrvD+tnLYXJU3ur+sEYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4X9-0006xJ-MX; Wed, 10 Jun 2020 17:29:03 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4X6-0006wm-HZ
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:29:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id j198so5156419wmj.0
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=E/OpYtkdJhBuYsHSJhq676XvJqjKjlf+gMoabLS0g4A=;
 b=nYUpGKBs4xEHPwNFak20lPLO9cHto5Hm28yV7rMIpULXEx9LOCq282m5wJn8aspYyf
 deotVxLT/l5bQk1UdN/3Rkf/mR5CKcy25daHDqFrqa81Iy5I8EqC2cNLcOvG8y48WaMF
 CAHmtDsJZD52OQM43AQ5C0AJyEjuSwD/nw0oE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E/OpYtkdJhBuYsHSJhq676XvJqjKjlf+gMoabLS0g4A=;
 b=Tu6FnRYVaF38VSneR592dyTNvarRL2lektKmA/DO6PFEGP/IGpI+9HMGKbU892ON+Y
 RgvX6v2SgT1pMWYuMTzab0qAnYDrbzQA0nhi5HSw/loSaNUgECSt78XDROyIYohIxR56
 it4HZzuTaLvy6vzvfILllBPLKkimL++SsSqr7eCzn3+Mnq5ZqpNFbreQwnoH65MevTD3
 yw8LPCySRt5svXrCv9SFy6uqLCppqP6sdXOW7XWK//mG2zMX9QaKrVa1wh51n8lXSN7n
 AVGISiWw9a8/ZlQQyR4aza5YcMeqkGu2s9slFXuflxlYe+nhxpMcDYKxAuOFUcSCL2Jn
 Dpyg==
X-Gm-Message-State: AOAM5312nbKJV/AWU9+CAxnOb7ykE4WeSpQF9fTXwk6tfdAIuh0yzazQ
 qvUn3IcqSlx2mOuEQxiUywTx0A==
X-Google-Smtp-Source: ABdhPJzkHS+OI1HGIrKjMxe9yNET80vIiPkjUOxBkrzk8eds2xaarln9Q8zxhAniA4Pm9pxWM6Lc7A==
X-Received: by 2002:a7b:cbd9:: with SMTP id n25mr4188276wmi.30.1591810139023; 
 Wed, 10 Jun 2020 10:28:59 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c5sm678037wrb.72.2020.06.10.10.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:28:58 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:28:57 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 4/5] media: staging: rkisp1: cap: use
 v4l2_pipeline_stream_{enable,disable} helpers
Message-ID: <20200610172857.GH201868@chromium.org>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
 <20200610170344.GC201868@chromium.org>
 <02c8bd4a-0fc1-fcc5-4d8b-63ff1d406988@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02c8bd4a-0fc1-fcc5-4d8b-63ff1d406988@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_102900_589093_A731564E 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 07:22:04PM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 10.06.20 19:03, Tomasz Figa wrote:
> > Hi Dafna,
> > 
> > On Fri, May 22, 2020 at 09:55:21AM +0200, Dafna Hirschfeld wrote:
> > > From: Helen Koike <helen.koike@collabora.com>
> > > 
> > > Use v4l2_pipeline_stream_{enable,disable} to call .s_stream()
> > > subdevice callbacks through the pipeline.
> > > Those helpers are called only if the other capture is not streaming.
> > > 
> > > If the other capture is streaming then he already did that for us
> > > so we call s_stream only on the resizer that is connected to the
> > > capture node.
> > > 
> > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > ---
> > >   drivers/staging/media/rkisp1/rkisp1-capture.c | 104 ++++++------------
> > >   1 file changed, 32 insertions(+), 72 deletions(-)
> > > 
> > 
> > Thank you for the patch. Please see my comments inline.
> > 
> > [snip]
> > > +static int rkisp1_s_stream_subdev(struct rkisp1_capture *cap, int enable)
> > > +{
> > > +	struct rkisp1_device *rkisp1 = cap->rkisp1;
> > > +	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
> > > +	int ret;
> > > +
> > > +	/*
> > > +	 * if the other capture is already streaming then we only need to
> > > +	 * call s_stream of our reszier
> > > +	 */
> > > +	if (other->is_streaming) {
> > > +		struct v4l2_subdev *rsz_sd  = &rkisp1->resizer_devs[cap->id].sd;
> > > +
> > > +		ret = v4l2_subdev_call(rsz_sd, video, s_stream, enable);
> > > +		if (ret && ret != -ENOIOCTLCMD)
> > > +			dev_err(rkisp1->dev,
> > > +				"stream %s resizer '%s' failed (%d)\n",
> > > +				enable ? "on" : "off", rsz_sd->name, ret);
> > 
> > Do we need this special case? Wouldn't v4l2_pipeline_stream_*() simply
> > increment reference counters for the other entities?
> 
> I removed the stream count in v4 of the patchset since I thought it
> might be problematic/confusing to add a field "stream_count" in
> "struct v4l2_subdev" that is used and updated only by those helper functions
> 
> What do you think?
> 
> There is also the issue that both you and Sakari Ailus mentioned that
> an isp driver can't know the subtopology of a sensor driver and how it handle the
> s_stream callback on it's entities.

Ah, okay, so we settled on removing the refcounting from the helpers.
Fair enough. Sorry for the noise.

Feel free to add my Reviewed-by.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
