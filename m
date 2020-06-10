Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E211F5BF4
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 21:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKqRj2BC8vhITm1eoRqs7uYkeLxf+RNSqi8LUQHe7ys=; b=sDE5rYU16Obts6
	agPoMOlxF8PUDuVoWPJgduapz1hCR+MiS/4zqul2Qgwe9w1muy9o9E2O4qD9eiYS4UVy6x9jZXWCe
	QZgLnM8Affsv+ryTlmFxrJfvKEoXtXknLD/F3Od0sQAr11H6foWpiL9G5D5+Txx1DKLCCvPYE4ryl
	kXZuv9Rw07+90F5h6EeInaQNt+KM+kXB44JxDM4go/VdKYPugQ6Ij2ShsrbrZr1C6FHYE/2zgJ6qP
	+iFQHyamdN3iM8kwSmYPiy3dFLX9ECzWWpMdOBwSObZIe4EFTw31P95XUeSyLzXJczASYsfN8GfUb
	O49rAy4BaKRn/uoNSnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6OZ-0001hL-GS; Wed, 10 Jun 2020 19:28:19 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6OW-0001h0-GY
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 19:28:17 +0000
Received: by mail-ed1-x543.google.com with SMTP id m32so2232364ede.8
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 12:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5e8lB/A/P9Ex4LqZYnCtNcCafDSvzA9cq73cxO5JAxY=;
 b=dAmLY/VclUMP/ZQH3aZAD64rv42wM9O9MwoV1/8fmaVJ9Ui5aW4LUTr7KRuMlkct36
 JfIez8imV19Wh/01gR+hMHbYRe4m1kGtpxDzzr8bMr40AKgdK0VM7ykbpiB+UGqqNRR3
 q0GxmvQlfa3bRY3TAIYcVDreYAgk00KS8HHHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5e8lB/A/P9Ex4LqZYnCtNcCafDSvzA9cq73cxO5JAxY=;
 b=Eh4vplG2Ho1wcVB+4+uIhdUyDy/9/3tN5PgfODYw8O0G2l4XOyLYe10fe626yRsE+2
 3vJjX9ETDJ0sI5VdjTcF/1Lwx6ZWDi4jwn+zuu+KgrAM4eHGTP9VFBBSrbtD7XpW9AJL
 km9AfY5R3SWPLugwfa4D6joRXPDeaTsCa0fdMksBr83WulelLqJnxFNEyIb1HChgqTl5
 WhK6kwJnLg+uCxPdPOPGZNS5CTGju+FWPTJ8xPS+8vLP63tG05ug8i1k/fB3qBmZslel
 xtPLL4uDejs3LumCt4Ue7Ro3Ze5/Wa38cFDijJMqS/DRhC0eAkv6rSCTOQG1kQ0GaIAJ
 VABQ==
X-Gm-Message-State: AOAM531cWit1p1aCs5LBHgvGhJQrE8BLEmf8HzWOgcK1QlC/sNvY6lN9
 EDJijB35oZHuQAXSzi+3ALXXLZ3NtQj+uQ==
X-Google-Smtp-Source: ABdhPJzCUzJY1RA2mOn30Pe9U0K/jjhBfLYmj8CbpHIJQJAhnBtXNfb5xg6tDT8rSVuIxVrqY0yQFQ==
X-Received: by 2002:aa7:d957:: with SMTP id l23mr3712941eds.206.1591817294588; 
 Wed, 10 Jun 2020 12:28:14 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id i12sm466440ejz.122.2020.06.10.12.28.13
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 12:28:13 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id u26so5357806wmn.1
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 12:28:13 -0700 (PDT)
X-Received: by 2002:a7b:c2a9:: with SMTP id c9mr4028401wmk.11.1591817293038;
 Wed, 10 Jun 2020 12:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
 <20200610171511.GD201868@chromium.org>
 <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
 <bb5576b1-7bfb-7911-004c-8fa1b4e1603c@collabora.com>
In-Reply-To: <bb5576b1-7bfb-7911-004c-8fa1b4e1603c@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Jun 2020 21:28:00 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BMHX_kTr4CWnjB=Lbdzmg+8uFEeW5qVKitMQZ8EkZf5g@mail.gmail.com>
Message-ID: <CAAFQd5BMHX_kTr4CWnjB=Lbdzmg+8uFEeW5qVKitMQZ8EkZf5g@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_122816_565086_BA2851BF 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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

On Wed, Jun 10, 2020 at 9:00 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> On 10.06.20 20:36, Dafna Hirschfeld wrote:
> >
> >
> > On 10.06.20 19:15, Tomasz Figa wrote:
> >> Hi Dafna,
> >>
> >> On Tue, Jun 09, 2020 at 05:28:22PM +0200, Dafna Hirschfeld wrote:
> >>> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
> >>> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
> >>> This is a bug, the resizer should support the same formats
> >>> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
> >>>
> >>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> >>>
> >>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>> Acked-by: Helen Koike <helen.koike@collabora.com>
> >>> ---
> >>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
> >>>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>>
> >>
> >> Thank you for the patch. Please see my comments inline.
> >>
> >>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> index d049374413dc..d64c064bdb1d 100644
> >>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
> >>>       u32 pad = code->pad;
> >>>       int ret;
> >>> -    /* supported mbus codes are the same in isp sink pad */
> >>> -    code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
> >>> +    /* supported mbus codes are the same in isp video src pad */
> >>> +    code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> >>>       ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
> >>>                      &dummy_cfg, code);
> >>
> >> Actually, is this really the true? AFAIR the ISP itself can only output
> >> either Bayer or YUV 4:2:2. The resizer can take YUV 4:2:2 at its input
> >> and output YUV 4:4:4, 4:2:2 and 4:2:0. Bayer capture is handled with
> >> resizer bypass mode. We haven't tested that, but if implemented, it
> >> should probably be done by exposing a link between the ISP entity and a
> >> video node directly, without the resizer involved.
> >>
> >> WDYT?
> >
> > We can also implement it that way. Only the mainpath needs
> > a direct link from the isp since selfpath does not support bayer formats.
> > It makes it easier on userspace for bayer formats since it does not have to
> > configure the resizer.
> > On the other hand if the format is YUV it has the option
> > to either use the the resizer or not.
> >
> > Thanks,
> > Dafna
>
> Anyway, this is a two line bug fix, so I think this patch can first be
> accepted and then if we choose to change the topology this can be done
> in a separate patchset.

Makes sense. Feel free to add my Reviewed-by.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
