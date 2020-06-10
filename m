Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171AC1F59AA
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljfDMVoZm84IWPDjr0LQlUe+Wvv0AgJnUdrIEk/X63U=; b=mcq+pfIE2igsTV
	oRVoKITgxBFwDP0W918bfdOl5/Iv4wJvhaGWhZL2sKQ/mGdkcDeHvn08vySOO0ySTOwv7Vcu9tWDO
	QXCJWFclW8O4b1OlnU5l/LFmRckgTW5KMAo3M1w5mh1trG1ce+xtj247wquSpgqRB8SgeR5ThTWEu
	6R2RbIAYGIatsiYp4gSgALorpKHK4zLrRqRgFcHiX2QJZ2qNMPmrsBwQfXcgURsO1NFVhtVnZdqEi
	5F5lDqMgdpG1Wcz6A3uWS0IvfOcx2VXKwSUmAVwAtsqa6fkqv2o7tKvkZk0GrzKzLitRGK3BS1PJW
	Xg9Ud1z74eL1OsCbonsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj48l-0005S2-4j; Wed, 10 Jun 2020 17:03:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj48h-0005Rg-UV
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:03:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id x6so3083391wrm.13
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QqKtF6YggT1kVfGangu1NVfy3YhWEYyJMMlQRoCyXEo=;
 b=bARbcSN2FVoxtjkZrNqoOH0kNupyfsuM8P3iDtgS7WgKApBJRFimUENjau+/29mC62
 Fd6vlXNYXgmIXkxnuUl10xdJVucLZQLysCS5yIFlXQAoyCRJ3+kMLLzbfD5Yn6FKXPHP
 UrkIRo9swZkj/0kwj6VW34tnogP9Pj0AXSt6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QqKtF6YggT1kVfGangu1NVfy3YhWEYyJMMlQRoCyXEo=;
 b=HmNiKhyYhKpdecpkBgz7ljdLr6Icj1f58kzFqURI5GvQesA2ErC0NJh486CXkushg5
 BM0sB8O3y3AdTd/BgwWocmVwgvnMBShnWxSwx1rQuKTOhR5pFTDdrG4lDuFrVJGeTB2+
 KV9hCyYMc0xXOiMwmqqhdLLVdw36JdbNOgpowuDkACW3pPv4CawEm7Hjh/YsucWENvXZ
 f9Vw+vHQblK6E9S5KIRecLp0homywy0yPNC+5tdMpRpLD6IKfBXdzxmCet18ddOCF8GM
 czu339YpnhR9fyiHPs5CDs8cEvGPh6I6CKcae3W6jsJWMr37fuv85+vd1zuJYus59YEc
 EQaw==
X-Gm-Message-State: AOAM530Hb5OLW47zFnJfNyvvZVl3KH7RckL6fKPRdSVpMei39/9o8fo5
 GPV2j7l7DWCecPjGuErl4SczTg==
X-Google-Smtp-Source: ABdhPJwpRF03+YA3UPy97b7QHVyxNK/FY/bTYzrYucdvxEeE0qs7mburY0RomM5MuUosEt6lXsX9PQ==
X-Received: by 2002:adf:f988:: with SMTP id f8mr5184805wrr.81.1591808626330;
 Wed, 10 Jun 2020 10:03:46 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id t7sm518761wrq.41.2020.06.10.10.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:03:45 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:03:44 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 4/5] media: staging: rkisp1: cap: use
 v4l2_pipeline_stream_{enable,disable} helpers
Message-ID: <20200610170344.GC201868@chromium.org>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100347_977322_8405F5FE 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Hi Dafna,

On Fri, May 22, 2020 at 09:55:21AM +0200, Dafna Hirschfeld wrote:
> From: Helen Koike <helen.koike@collabora.com>
> 
> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream()
> subdevice callbacks through the pipeline.
> Those helpers are called only if the other capture is not streaming.
> 
> If the other capture is streaming then he already did that for us
> so we call s_stream only on the resizer that is connected to the
> capture node.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 104 ++++++------------
>  1 file changed, 32 insertions(+), 72 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

[snip]
> +static int rkisp1_s_stream_subdev(struct rkisp1_capture *cap, int enable)
> +{
> +	struct rkisp1_device *rkisp1 = cap->rkisp1;
> +	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
> +	int ret;
> +
> +	/*
> +	 * if the other capture is already streaming then we only need to
> +	 * call s_stream of our reszier
> +	 */
> +	if (other->is_streaming) {
> +		struct v4l2_subdev *rsz_sd  = &rkisp1->resizer_devs[cap->id].sd;
> +
> +		ret = v4l2_subdev_call(rsz_sd, video, s_stream, enable);
> +		if (ret && ret != -ENOIOCTLCMD)
> +			dev_err(rkisp1->dev,
> +				"stream %s resizer '%s' failed (%d)\n",
> +				enable ? "on" : "off", rsz_sd->name, ret);

Do we need this special case? Wouldn't v4l2_pipeline_stream_*() simply
increment reference counters for the other entities?

> +	} else {
> +		if (enable)
> +			ret = v4l2_pipeline_stream_enable(&cap->vnode.vdev);
> +		else
> +			ret = v4l2_pipeline_stream_disable(&cap->vnode.vdev);

I wonder if this doesn't ask for just making the helper
v4l2_pipeline_s_stream(..., int enable).

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
