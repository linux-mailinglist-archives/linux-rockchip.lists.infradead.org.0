Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3BD1E3342
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 00:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIM1NPKqC24yeqVI/+Jttq4SQMUXnqrlEqIjGPPY+XY=; b=oDTSBramHMZaMx
	prM47odJf3RlLcE9veh8ZomttxFsWdJTYRrGqTUw3Pse9ST4PoHZgziqXw8qlj/sv3ifxmBgSPPdE
	NVuyn2ucACtAQd6KenNkVeROnsLQXqgko9NeyM/52NDK1f8M92+6o8cPi0JP9mXuLdNQXZj9FQVdm
	PYrQ2kr0sFmTpCG1PzA3CEpdMsecnexB2OkV2g0BMx6/ZzxX3b40zdKRY/rmvb8jTrTGhPH6z/Vlq
	0vwXtLMQx1NYU076wbPrsW470vqTTiXbeZn4ilouSTTRfkqDt71DgLjhdtXhtf/MsegResJnG0ryT
	/BwBPNSmos0qQUOoMFWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiVv-0000Fp-Vg; Tue, 26 May 2020 22:57:39 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiVs-0000F2-5B
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 22:57:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id j8so23865581iog.13
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 15:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Sex9OGzN9WT8EWuepq7JqqNxYg08Gjufj9S0qlNx5LU=;
 b=gMjYs7GiAbye4VSvbyZq3xrxCEmJispCUG7lzSx9jGYP530GAkDHnBbH/hGXxJxSTv
 fV8rgnnHs89C8COJy5QTJ3KEW8nHhEvcWAuG6BiBMenOVLCVcf3NxM0SNfN8Yua6miox
 cvoWidbF6cLgIyWVkPohg41L0eABtK+fazhKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Sex9OGzN9WT8EWuepq7JqqNxYg08Gjufj9S0qlNx5LU=;
 b=b/ofGImyxeQVLvl0pW2Bde3xx6kWR6kWlSrtXjmjr2IXJdt8f6dAPNCl0Oa3HdZnL7
 thWFN5T3c4EdolWvfDebrcpOWpBEiZegiD7iK8LDDr6tZqc7V4feZPrWczrlB8p+0RUn
 i57VGZe3phTJiJzF6CSHUYGhuPf/G9JuWhKPJPs0wVe/xb3nz59vYxz0TyitufyHK+B7
 79lkiPgd9vZLoniiAUyvppBeXuoJY+6O5jSI6Yj/vZvEoWjd60Nng7APCi7y5KaErFHu
 V3RN/KGf+nxlm4qcdo8IVBHrfaM0WeywWw6REQETRYL47egoxHlA4CbrEUGpTSJXRiVR
 yU1w==
X-Gm-Message-State: AOAM530XD5D7DzHemzSPbq+fSe8iFTgO8aYXShYDFkD8WL5BPiS7F5yj
 kPfFLczWOKaGIbP6n6Y+fDqx7dlgdx/VKbjO/bJ3GA==
X-Google-Smtp-Source: ABdhPJwLBbbapXbf0ED+DUqLSjGQpZPZGpk+3HhYLDWqx/9ECPvOQVi320yVJdmvZWTQTA6oUrjtgHEgJhYh3uAwxrA=
X-Received: by 2002:a6b:1448:: with SMTP id 69mr15871189iou.83.1590533855234; 
 Tue, 26 May 2020 15:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-5-dafna.hirschfeld@collabora.com>
 <fc4dbc40-ab57-0ca4-4ac7-5ffdb7f0ad81@collabora.com>
In-Reply-To: <fc4dbc40-ab57-0ca4-4ac7-5ffdb7f0ad81@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 00:57:24 +0200
Message-ID: <CAHD77H=iq3BpwD3=yL1DttUH_=vt8nO-5N_Kiu427BrUHJQ-zQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] media: staging: rkisp1: cap: remove support of
 BGR666 format
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155736_218082_6CAD5637 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 12:35 AM Helen Koike <helen.koike@collabora.com> wrote:
>
>
>
> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> > The rkisp1 supports RGB encoding with 6 bits per
> > color with the following format:
> > - - b5 b4 b3 b2 b1 b0 - - g5 g4 g3 g2 g1 g0 - - r5 r4 r3 r2 r1 r0 - - - - - - - -
>
> Is this the same as V4L2_PIX_FMT_XBGR32 format, but with colors range from 0 to 63 ?
>
> I was wondering what is the usage of such a format. If it is useful, then I'm sad
> to see this being removed from the driver, since this is a v4l2 api limitation, and not
> a hw limitation.

Sounds like some relic of the past. ;)

In general, RGB formats are not very useful in this hardware. One
wastes the precious bandwidth, but doesn't get more color resolution,
since the pipeline uses YUV 4:2:2 internally anyway. The typical usage
scenarios with video or JPEG encoding and preview are much better off
with the available YUV formats.

>
> Regards,
> Helen
>
> >
> > This is not how V4L2_PIX_FMT_BGR666 is defined, so remove
> > this format from the driver's formats list.
> >
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  drivers/staging/media/rkisp1/rkisp1-capture.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > index 61b9ebe577b2..2660e44eda88 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > @@ -283,10 +283,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
> >               .fourcc = V4L2_PIX_FMT_RGB565,
> >               .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
> >               .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB565,
> > -     }, {
> > -             .fourcc = V4L2_PIX_FMT_BGR666,
> > -             .write_format = RKISP1_MI_CTRL_SP_WRITE_PLA,
> > -             .output_format = RKISP1_MI_CTRL_SP_OUTPUT_RGB666,
> >       },
> >  };
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
