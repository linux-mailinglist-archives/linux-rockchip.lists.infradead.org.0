Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D71D8E90C
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 12:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtyhcEfccRfWJY2yMjNILYhxLyGGaSUkNd6PXd0nlmo=; b=sWHCYqSxBWg9og
	da6gZ7oAv/LxggIU9WLgTK8XP913ROPTJBww7Ocb9qiNBhu6IQDN6cTqpAcZPHrDuUlebFTNFoR+U
	vjOKwsQopWkOEVAbQTk3Kds3fL8QcrDy4rHmnPzpc0QkZo4gyVGN5r1uCPHUyVL1F7cMyKkAY0qFJ
	bD6y3dn+gGfFN6F7FU7EbVWO1JbqFP4kvtJXSZF2AlDHGHwnalEv58NWcs/ofZRq8OwP96PYeRWHf
	FAgXaIn00W9Z0JcC70pz9b1RnH7U2vgOv+sPvOOnIqb3zaUK4al6CXFVxXxa2PWIfgQbqabygl+Iu
	kBipDRQhqu3se/KXnSOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyD1T-0005nN-1K; Thu, 15 Aug 2019 10:30:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyD1N-0005mz-Gp
 for linux-rockchip@lists.infradead.org; Thu, 15 Aug 2019 10:30:19 +0000
Received: by mail-ed1-x543.google.com with SMTP id g8so1723614edm.6
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2019 03:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gehrfSX/wYrGDiK8IqXnoPhYbim32JFwF8t1ONu8CwY=;
 b=IKj4fHPmdhELeh90ShgbJmumqDoKz4HjY9PfX+7XdlHjTTZy8VBZMWV8V0jgtKigwJ
 RqABRgkm9B8EAn+pmeIpfze0Tyfh2OmUTy9FzVzVkYUiACFB6c0YcnrGGDeZX/qyDe0P
 N3pdQMX0iGWiIsb1N8JDM8yyCWEvtLttRdL/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gehrfSX/wYrGDiK8IqXnoPhYbim32JFwF8t1ONu8CwY=;
 b=azdjStK4Ugyy0hDS6iKXb2wHj+8/rHE61daoVgcYJvmpr91z4IbMo9aHiSPJf8NR+z
 o+ZeWuuqG44pW3ntNFGvfW+iZtXn2r35QI/9iWgcKmuaw0KHX2IP5sUo4hw4cC5skYNM
 loziEX8rMhFw0NoOWudluHnLqPPyZOFbRzJWdGeGcEEUyp/ep71Nd4DFK2NYMs8xhnbw
 seTZ5iKfDo47805oo5LXyBGYdZ/0tlAQgykhkh25WXmsMVCpgXc5WocCLOP4QRvwfpjC
 ynGjY7V2IyaRzep2ZVYMdnY/t0sOhi1jSVVco1C54MgXm71mA1iQu4zPzsNg+/xroiFO
 IqJA==
X-Gm-Message-State: APjAAAXoJujW8uTIVeZm7wplqibyeBbqdbsU5NABowbxU/cps0UTmkJk
 aXPGO1EfZf3504oiPl7FKyjrv175Bfxc7g==
X-Google-Smtp-Source: APXvYqzBoOl+B6oapQwaLpZBloXFfF/J6MaCxL7exGq7giiJ9glww6n8rJaLtw5HbCF2ASWntn0ZPw==
X-Received: by 2002:a17:906:e241:: with SMTP id
 gq1mr3655585ejb.265.1565865012208; 
 Thu, 15 Aug 2019 03:30:12 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id h2sm483638edr.16.2019.08.15.03.30.11
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 03:30:12 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id k2so1805590wrq.2
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Aug 2019 03:30:11 -0700 (PDT)
X-Received: by 2002:adf:f851:: with SMTP id d17mr4704460wrq.77.1565865011444; 
 Thu, 15 Aug 2019 03:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
In-Reply-To: <20190815082422.GM6133@paasikivi.fi.intel.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 15 Aug 2019 19:29:59 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Cd2k5ZCDfu=a281NLOa88vpm-P7ZPWF4Nnx==iyEkn7A@mail.gmail.com>
Message-ID: <CAAFQd5Cd2k5ZCDfu=a281NLOa88vpm-P7ZPWF4Nnx==iyEkn7A@mail.gmail.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_033017_589518_05F35C9E 
X-CRM114-Status: GOOD (  29.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 kernel@collabora.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chen Jacob <jacob2.chen@rock-chips.com>, Jeffy <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Allon Huang <allon.huang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Jacob Chen <cc@rock-chips.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:25 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Helen,
>
> On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
>
> ...
>
> > >> +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> > >> +                           struct v4l2_subdev_pad_config *cfg,
> > >> +                           struct v4l2_subdev_format *fmt)
> > >> +{
> > >> +  struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > >> +  struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> > >> +  struct v4l2_mbus_framefmt *mf = &fmt->format;
> > >> +
> > >
> > > Note that for sub-device nodes, the driver is itself responsible for
> > > serialising the access to its data structures.
> >
> > But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> > ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> > most probably) ?
>
> Good question. I had missed this change --- subdev_do_ioctl_lock() is
> relatively new. But setting that lock is still not possible as the struct
> is allocated in the framework and the device is registered before the
> driver gets hold of it. It's a good idea to provide the same serialisation
> for subdevs as well.
>
> I'll get back to this later.
>
> ...
>
> > >> +static int rkisp1_isp_sd_s_power(struct v4l2_subdev *sd, int on)
> > >
> > > If you support runtime PM, you shouldn't implement the s_power op.
> >
> > Is is ok to completly remove the usage of runtime PM then?
> > Like this http://ix.io/1RJb ?
>
> Please use runtime PM instead. In the long run we should get rid of the
> s_power op. Drivers themselves know better when the hardware they control
> should be powered on or off.
>

One also needs to use runtime PM to handle power domains and power
dependencies on auxiliary devices, e.g. IOMMU.

> >
> > tbh I'm not that familar with runtime PM and I'm not sure what is the
> > difference of it and using s_power op (and Documentation/power/runtime_pm.rst
> > is not being that helpful tbh).
>
> You can find a simple example e.g. in
> drivers/media/platform/atmel/atmel-isi.c .
>
> >
> > >
> > > You'll still need to call s_power on external subdevs though.
> > >
> > >> +{
> > >> +  struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > >> +  int ret;
> > >> +
> > >> +  v4l2_dbg(1, rkisp1_debug, &isp_dev->v4l2_dev, "s_power: %d\n", on);
> > >> +
> > >> +  if (on) {
> > >> +          ret = pm_runtime_get_sync(isp_dev->dev);
> >
> > If this is not ok to remove suport for runtime PM, then where should I put
> > the call to pm_runtime_get_sync() if not in this s_power op ?
>
> Basically the runtime_resume and runtime_suspend callbacks are where the
> device power state changes are implemented, and pm_runtime_get_sync and
> pm_runtime_put are how the driver controls the power state.
>
> So you no longer need the s_power() op at all. The op needs to be called on
> the pipeline however, as there are drivers that still use it.
>

For this driver, I suppose we would _get_sync() when we start
streaming (in the hardware, i.e. we want the ISP to start capturing
frames) and _put() when we stop and the driver shouldn't perform any
access to the hardware when the streaming is not active.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
