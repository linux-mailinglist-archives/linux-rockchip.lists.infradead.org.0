Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA11D200851
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jun 2020 14:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br6uBiW+V6oUyLyo7yd3SLK6NATTEVkiv6e1Ebv7Leg=; b=QfkJnscIqIJRsB
	Uqms+A0XbkRPfyKTQG6jO+q4qzkoPThYS1mzm5Z1fsvhpeiqlpwMwpfChT2DrNgbRk3PXb8dY4dL7
	hkHc9cK34q0WuochxSIINsEo1kKuraBB31JJgMqi4RqmK9mpGl84xR1UxLjRqhu1Tsrd4JULvZrDR
	wUcJKamzcBBcrG3JUKraJMuOB4GikOJUWyBP9X1L6xzGtLbq5VOvBoytZocaAqh/Bh6JqE/Kyxylf
	aQB+kZSjvFUhOIyMGD3+WRt5BCWk/Iba+jw3aK9DqZUpRrf4JLDw8uhxrywVYXi7cFIkwAdPoxphl
	ZM3vFGszWEdv+OczA6Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFl3-0006Ts-4P; Fri, 19 Jun 2020 12:04:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFkz-0006TS-E7
 for linux-rockchip@lists.infradead.org; Fri, 19 Jun 2020 12:04:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id g75so115008wme.5
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Jun 2020 05:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KS+xgGiu4reqWu9ZkdrM3YZnT7jWjFWO57RJ5OWuTSI=;
 b=DtJiEmCqkXekdqQSbNAj09lmMdfRM5aSbLXOPM2Qhj23YzlfDX1jrsXN8GbdBvLKRA
 OKtlHGGRRKKFtXfMmfThXyNogdrzW4eQ2gfU2gvClCCkACasjco4P5OkXkZMnEqo4I6m
 FPIA6gNwNsQzYFEKtd1OhG+MJfOIkfooW89QI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KS+xgGiu4reqWu9ZkdrM3YZnT7jWjFWO57RJ5OWuTSI=;
 b=Py/0F7opr6zF6kDUZzo8PdxW9iQvi4/yFwntQ3fkBh7zRLG5nhokVBAs4GUZUk8zIS
 LX39/OvjPmKHK+z+po8tJIfspInQj4yl0OMfSARALuV4++ICTYtNO1pTsUXu6Fu5XCg6
 AjEumWs5ei3aD1kctt42z5+ZzWclAUVZPwItRydjBEEAHsWQvieHsK32tWTRa2b2lPJ5
 FcHUF7lxgQ34i0H+1EFoayZATl64MUg4ZjzwNhNPRtv2OXOEpmhO6LJs5RGdSMM4M69e
 ZHz9ay6f1zcYfQuj2nFwNoMGB2hzhBcf8hXFRJVwVI8HZROrztfXGCDMIhKHy+DIFRLF
 4YwQ==
X-Gm-Message-State: AOAM530nAw/V+UlAb9EwYWy2SaY7jA5zTK1oHEBzQxUt8A0BgQX+vTEH
 lgJG2m+IfG6rvcXqt/JRbH8B5A==
X-Google-Smtp-Source: ABdhPJzaTGL7AWLQpE5OqyHn4N1qE+gUsyQ9Tbeg8ks9m7xsEMBCzoXPk951voCPcvnOWVXDGg/GbA==
X-Received: by 2002:a1c:1b13:: with SMTP id b19mr3343058wmb.84.1592568266908; 
 Fri, 19 Jun 2020 05:04:26 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id l17sm4951658wmh.14.2020.06.19.05.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 05:04:26 -0700 (PDT)
Date: Fri, 19 Jun 2020 12:04:25 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Message-ID: <20200619120425.GA241696@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
 <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
 <aa52f9f8-d9e9-06b2-22df-bbab2d26b516@collabora.com>
 <20200618174752.GA10831@chromium.org>
 <9ee01443-985d-751c-fff9-fa90337de68d@collabora.com>
 <20200618181220.GC10831@chromium.org>
 <f1660285-f6cb-6157-1e56-2974bc549fef@collabora.com>
 <20200618191857.GC73379@chromium.org>
 <09b87404-b106-f58b-b773-cf4c344648df@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09b87404-b106-f58b-b773-cf4c344648df@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_050429_501157_BEDE806C 
X-CRM114-Status: GOOD (  39.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jun 19, 2020 at 09:30:50AM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 18.06.20 21:18, Tomasz Figa wrote:
> > On Thu, Jun 18, 2020 at 08:50:23PM +0200, Dafna Hirschfeld wrote:
> > > 
> > > 
> > > On 18.06.20 20:12, Tomasz Figa wrote:
> > > > On Thu, Jun 18, 2020 at 08:00:37PM +0200, Dafna Hirschfeld wrote:
> > > > > 
> > > > > 
> > > > > On 18.06.20 19:47, Tomasz Figa wrote:
> > > > > > On Fri, Jun 12, 2020 at 02:45:00PM +0200, Dafna Hirschfeld wrote:
> > > > > > > 
> > > > > > > 
> > > > > > > On 27.05.20 01:09, Tomasz Figa wrote:
> > > > > > > > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > > > > > > > <dafna.hirschfeld@collabora.com> wrote:
> > > > > > > > > 
> > > > > > > > > If the capture format is YUV444M then the memory input format
> > > > > > > > > should be YUV422, so the resizer should not change the default
> > > > > > > > > hdiv, vdiv in that case.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > > > > > > ---
> > > > > > > > >      drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
> > > > > > > > >      1 file changed, 4 insertions(+), 3 deletions(-)
> > > > > > > > > 
> > > > > > > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > > > index 04a29af8cc92..5f9740ddd558 100644
> > > > > > > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > > > > > > @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > > > > > > > >              * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
> > > > > > > > >              * streams should be set according to the pixel format in the capture.
> > > > > > > > >              * The resizer always gets the input as YUV422. If the capture format
> > > > > > > > > -        * is RGB then the memory input (the resizer output) should be YUV422
> > > > > > > > > -        * so we use the hdiv, vdiv of the YUV422 info in this case.
> > > > > > > > > +        * is RGB or YUV444 then the memory input (the resizer output) should
> > > > > > > > > +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
> > > > > > > > >              */
> > > > > > > > > -       if (v4l2_is_format_yuv(cap->pix.info)) {
> > > > > > > > > +       if (v4l2_is_format_yuv(cap->pix.info) &&
> > > > > > > > > +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
> > > > > > > > >                     src_c.width = cap->pix.info->hdiv;
> > > > > > > > >                     src_c.height = cap->pix.info->vdiv;
> > > > > > > > 
> > > > > > > > As pointed out in another thread, this should have been the original
> > > > > > > > size divided by the divisor and not just the latter alone.
> > > > > > > > 
> > > > > > > > It seems a bit suspicious to me that we don't need to upscale the
> > > > > > > > chroma planes here, because it would mean that the MI itself would be
> > > > > > > > doing some horizontal pixel doubling. The hardware documentation
> > > > > > > > doesn't really explain this, though.
> > > > > > > > 
> > > > > > > > Have you been able to validate that the setting without upscaling
> > > > > > > > indeed produces correct output?
> > > > > > > 
> > > > > > > Hi,
> > > > > > > I investigated it again, without this patch, the frames on mainpath for YUV444 look good: https://imgur.com/a/NtazWhY
> > > > > > > but there is a problem on selfpath: https://imgur.com/a/vQJPqAn
> > > > > > > 
> > > > > > > This patch somehow solves the problem on selfpath but ruins the frames on mainpath.
> > > > > > > 
> > > > > > > I think the bug is actually in another place in the code. The function 'rkisp1_sp_config'
> > > > > > > sets a constant value RKISP1_MI_CTRL_SP_INPUT_YUV422 as the input format on the RKISP1_CIF_MI_CTRL register.
> > > > > > > But the value should be set according to the configuration. For some reason the problem arises only
> > > > > > > when trying to capture yuv444. When I capture yuv420 on the selfpath the frame looks good although the
> > > > > > > value RKISP1_MI_CTRL_SP_INPUT_YUV422 is set.
> > > > > > > Setting the the SP_INPUT_* according to the configuration seems to solve the problem.
> > > > > > 
> > > > > > Looking at the datasheet, SP seems to have some internal format
> > > > > > conversion capability - one can set SP_OUTPUT_FORMAT and SP_INPUT_FORMAT
> > > > > > to different YUV subsampling modes or even some RGB formats. MP doesn't
> > > > > > have this capability - it can only write whatever it receives.
> > > > > > 
> > > > > > I think this needs to be reflected in the driver, if it isn't yet.
> > > > > > Depending on the resizer source format, the MP video node must allow
> > > > > > only formats with matching subsampling mode.
> > > > > 
> > > > > Hi,
> > > > > I work on v3 now that does that, it supports several yuv mbus codes on the source pads of the resizers
> > > > > and then in the link_validation callback of the capture it checks that the subsampling matches.
> > > > 
> > > > Is it enough? I believe the principle is that within the same entity the
> > > > state needs to stay consistent, i.e. if the sink pad changes, the source
> > > > pad or video node must be updated to expose only correct formats,
> > > > including resetting the current format.
> > > Yes, but video devices have only a sink pad. Also, the sink pad of
> > > a video device is not associated with an mbus code. The video format configuration
> > > is not related to the media controller API.
> > 
> > The video device interface and the entity it is linked to belong to the
> > same driver. The V4L2 video device interface requires that the state is
> > always valid and the implementation of the video device needs to take
> > into account its links to external entities.
> 
> But if the pad on the other side of the link is configured after the video device
> then the state might become invalid.

The pad on the other side of the link is already outside of the scope.
Basically, the entity that interfaces with the video node must have
state consistent with the video node.

To make sure we're on the same page, let me give some examples below:

Initial state:
ISP source pad: YUV 4:2:2
Resizer sink pad: YUV 4:2:2
Resizer source pad: YUV 4:2:0
Video CAPTURE format: NV12

Scenario 1:
- Userspace changes ISP source pad to RAW.
- Userspace starts streaming and link validation fails.
- Still, the state is consistent between the resizer and the video node.

Scenario 2:
- Userspace changes ISP source pad to RAW.
- Userspace changes Resizer sink pad to RAW.
- Kernel updates Resizer source pad to RAW.
- Kernel updates video CAPTURE format to a supported RAW pixelformat.
- All the state is consistent and streaming can start.
- If the userspace calls ENUM_FMT on video CAPTURE, it only gets RAW
  pixelformats.

Scenario 3:
- Userspace changes Resizer source pad to YUV 4:2:2.
- Kernel updates video CAPTURE to a supported YUV 4:2:2 pixelformat
  (e.g. YUYV).
- All the state is consistent and streaming can start.
- If the userspace calls ENUM_FMT on video CAPTURE, it only gets YUV
  4:2:2 pixelformats.

Scenario 4:
- Userspace calls ENUM_FMT on video CAPTURE and only gets YUV 4:2:0
  pixelformats.
- It's not possible to make the state inconsistent between the resizer
  and the video node by using V4L2 video ioctls.

Am I missing something?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
