Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19C61F59D0
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CZN4d6oShu85Dh51aHt3fwi6KwsP1Tk1IZmrB+IJ9I=; b=lEjcjgBR7aNEUG
	8e9hdJcEpSyp3zFoktknXWDnkso+o8yqDXedBx0AQ7yXJ/exw4C+16FqhvF4ulqx3J3vEX4TA5nFS
	ltUlU6/BwDa6A6Qhi0Vl0YX/vvYnMKGkg9yXA+ZiIhEcp6xb24/F8DKIBHfpQ7AFTGiftpvrz7Xxv
	/TaAD7CIcIwe38PZy8zwegVvLvxJt83MgCOFeIwJv8qCgaFIrbQUX5qcxBlzdMUNR8hya300eZlhh
	WJjaX1fcao2ZugoOmjgpYKoxMhNTwnEX7JhrMinFntxwYZAz2B7w5alBVdtzDRr1hm52vG+lXAuCg
	TBf/7ys0IrcL8ZwJ1Z4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Js-0005S6-CP; Wed, 10 Jun 2020 17:15:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4Jp-0005Rd-AV
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:15:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so3138563wrr.10
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bnAcrLP2mBD0LgqehZqjWz+wZp6iGN77U60BH9nzBh0=;
 b=BkFAkg3N1KpW6IPcA5DYSGuaiwu0odA6YuyNlNs7f/B21x2DBbtGR4K0zgejzFk+Lq
 ZlDI6Np5FLPkD1aXF+5unv3k+JaiLrR2G4KBvm0ns7hpP1E8O/1KHVwz/5SxPx1ktHNS
 NDIAZN02SYnOFEUMW/xiGXfnntazknwOw5I/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bnAcrLP2mBD0LgqehZqjWz+wZp6iGN77U60BH9nzBh0=;
 b=n4nyRWHzSgepAIi6MhdyXvfFekT6793udXlABTxXbrXxwmI0FUeYsNTcYuhHHvAjLI
 r/gFx3n+iCMxtav5ZnGKiPw5JWYVqJJXpX+ktBFugzE8kjyNwuxZQ5jCW1Ng7hK44pvK
 JnobPanRUmmRVgMo1BM3+Fqvk9lc/HW3MxFwfGEH1gb2A3OoXD07d0QxnP17g0TcbPxN
 NQ2FmD4wr3f9n7aw6BHqmccRE8fIze1f7ktRkWt7h+LwsHI6chzs9VMLcn4H29g+fA4q
 iZp/k7tUgA+5aAdqkOf5TTh+D3O02d5CCyu9SbQfJ62Ku7Ue2JByPqW29tsxSuYxdAl3
 +MHg==
X-Gm-Message-State: AOAM5323q97ZxOcF+bQSU1t4mtojBqfxC6Jol39L67iqBM94rbivpm1a
 wmDiq0FsvkNLMyvT54J14sxzeA==
X-Google-Smtp-Source: ABdhPJzXRFioVOTYxRJCpIY3wTHZm24nNzMC3VNKwS1kSM+YzyY1Dt5VSkocGhTzocpkRijdzpy/og==
X-Received: by 2002:a5d:400f:: with SMTP id n15mr5080934wrp.419.1591809313597; 
 Wed, 10 Jun 2020 10:15:13 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id y25sm6843219wmi.2.2020.06.10.10.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:15:12 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:15:11 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats
 are the isp's src formats, not sink formats
Message-ID: <20200610171511.GD201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101517_378780_6065D857 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Tue, Jun 09, 2020 at 05:28:22PM +0200, Dafna Hirschfeld wrote:
> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
> This is a bug, the resizer should support the same formats
> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
> 
> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index d049374413dc..d64c064bdb1d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>  	u32 pad = code->pad;
>  	int ret;
>  
> -	/* supported mbus codes are the same in isp sink pad */
> -	code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
> +	/* supported mbus codes are the same in isp video src pad */
> +	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
>  	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
>  			       &dummy_cfg, code);

Actually, is this really the true? AFAIR the ISP itself can only output
either Bayer or YUV 4:2:2. The resizer can take YUV 4:2:2 at its input
and output YUV 4:4:4, 4:2:2 and 4:2:0. Bayer capture is handled with
resizer bypass mode. We haven't tested that, but if implemented, it
should probably be done by exposing a link between the ISP entity and a
video node directly, without the resizer involved.

WDYT?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
