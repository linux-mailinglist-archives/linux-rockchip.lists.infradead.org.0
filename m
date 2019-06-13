Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A1434F4
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 11:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSrZ4YRM7lxv1XMQ/zN8BT2qg2XLdSVgY/oTSf0xJ5s=; b=s+zWbwWb5aXfJS
	vo2BX5kK+PP5Z6F2c3qk+Nz5XJyQkQ97sCYKcv7imq3IY/AWyiOFKs7JM5wgv6Bixid+D/i8ONaOJ
	rf9F+q5UPtVpcmGGcQAGALc36UEYDz1J2v/01Oi7UggcoNw+mxBmuFEFqe+Gd/kbzO41XxMn8/x+k
	PasYCcYi+NCeWVQ2KNBG/gzGw3P3CKS45nqkZsfPEsfhceKsMrJgz8k1b4TuN0stx2jaGwv1BHZqm
	26rZgDmJneRnAsULnm+0hcDYYWpGcA6ZIdKhqRwsyU7sJIxt02W/TF5MPO379RQWj577HK/Q1MkYk
	3jW677gFDpZRBrsLIgMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMMJ-0004WY-TP; Thu, 13 Jun 2019 09:49:27 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMMF-0004Vr-B1
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 09:49:24 +0000
Received: by mail-vs1-xe41.google.com with SMTP id q64so12229083vsd.1
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 02:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NdS6xN6Z4DlPhoXqfSjLt1MlPeGtM/DFz1IwvW9UGoo=;
 b=gRY3cBMoBbyhUq/TwCPef50CCDKrv4iYze6tdunxTeCUZpRTxfdIbcrZIu3rL9nBmA
 IKu5OYITIeL6ltUdiFp9D/dQv5KZKcAv6V+fmHeGkWIe6jriJiht2zz2XO9FjHTjfRib
 NIvsg+FMfLXlxWpsnz2tVCHJTpT0XY2bvwC63A4K1b6VMqRrNgGbsb2LGvdXDeeBaEPZ
 m4z3ddfPasyoIKb3AqQ46OdJR6zCS6DXa7xNtmQomcyAaTessCVDKoSiccxpgKSHLEJM
 v8OJqfkxY2CdFdgcNZGppzV0c9uPWuWj07PpFzImXtu18YgRdm3Z/Qdd3ycwG99TvFSh
 91pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NdS6xN6Z4DlPhoXqfSjLt1MlPeGtM/DFz1IwvW9UGoo=;
 b=LQZNU195LPHFEXSHY+vT1qkVYrB4yaGA95gDzYrBW7GgEylxvQLf9fRWL+eTHXIRDh
 37EUtO535/xmxIskJG9qVrJF3QLNj+M410kUofg4u5BAj1Ky6nKv+ycSNyabMAXZTu4C
 kTkVZwwtGw1UH8jDd8qV6+bzTboS19UXT9B8ri59MxUSJeUDq/XcOp5vWrStWg5TZu9I
 LWC41TPzRm6uT3PDjgqHkr+6kouOzjau96X8MeXeMyQ+ZjpH4vV0enSyNTz+fTLsGvE+
 Jb4yAWOhDqqW1ivOAZVlrJA41y3h+iyYvtA3tdHtq5BPlt21N9x1ricIgGvq4YfJz9+Q
 6iCQ==
X-Gm-Message-State: APjAAAXTq6+1PKLXj5dwCDmUHNKhahyCauZCHeoKb5pLsz0tXvjK/4by
 lOKNUMlygAazAlRLCxHO53nLmQaoOxIpebH5uc5YJQ==
X-Google-Smtp-Source: APXvYqzWpA6aPKAyHaL8W3hPhJ3CXshgo14ktsq5uXw9v4wanH5DWggs2K573LXj7uMjFiRLQrDiZGsE/zNplvlP1QY=
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr48182216vsp.35.1560419357888; 
 Thu, 13 Jun 2019 02:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
 <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
 <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
 <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <16b4bfb39e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Jun 2019 11:48:41 +0200
Message-ID: <CAPDyKFr+nzy4JrtSrudORfOkFvPa==UtgaokQwigo8+c1L9wbQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_024923_395863_96B0E201 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, "Hunter,
 Adrian" <adrian.hunter@intel.com>, brcm80211-dev-list@cypress.com,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 at 15:58, Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
>
> On 6/12/2019 1:48 PM, Ulf Hansson wrote:
> > On Wed, 12 Jun 2019 at 13:11, Arend Van Spriel
> > <arend.vanspriel@broadcom.com> wrote:
> >>
> >> On 6/12/2019 12:10 PM, Ulf Hansson wrote:
> >>>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
> >>>>     mmc_set_data_timeout(md, func->card);
> >>>>     mmc_wait_for_req(func->card->host, mr);
> >>> These are not okay, none of these things calls should really be done
> >>> from an SDIO func driver.
> >>>
> >>> It tells me that the func driver is a doing workaround for something
> >>> that should be managed in a common way.
> >>
> >> We are using some low-level functions passing chain of skbuff to the
> >> device using CMD53 with scatterlist. If I recall correctly Marvell made
> >> an attempt to have a similar function for it in the mmc stack. Not sure
> >> if that ever made it in. If so I can rework our driver using that API.
> >> If not, I can make a new attempt.
> >
> > I recall there were some patches, but not sure why we didn't merge them.
> >
> > Anyway, if you want to move this forward, that would be awesome!
>
> Let's scope it before moving forward. Our use-case is to transfer a
> chain of skbuff's. I am pretty sure that is not something we want to
> deal with in mmc stack api. So I suppose passing a scatterlist is more
> sensible, right? Maybe on sdio layer of the stack we could consider
> dealing with skbuff's for network func drivers?

Passing a scatter gather list seems reasonable. Ideally we should be
highly influenced with how buffers and dealt with for mmc block
requests.

Some information that may be needed by upper SDIO layers is the
segment/block constraints set by the MMC/SDIO host controller/driver.
The below is what we have today (see include/linux/mmc/host.h):

max_seg_size;   /* see blk_queue_max_segment_size */
max_segs;       /* see blk_queue_max_segments */
max_req_size;   /* maximum number of bytes in one req */
max_blk_size;   /* maximum size of one mmc block */
max_blk_count;  /* maximum number of blocks in one req */

Ideally we don't want SDIO func drivers to access these directly from
the ->host pointer, but rather via new SDIO func APIs.

>
> Let me see if I can find those Marvell patches. Might be a good start.

Great! Thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
