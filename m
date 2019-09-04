Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1162DA861E
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 17:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri9xxTpoBstyDVZgvAwzX92on/CPiNhSDhgXiqX2GMo=; b=s9ZsBghgFWYZWG
	84u3Jja0n0QJaxSPoP800sXXo/ICkhKv0Y6SGyPKFIgL79GmtvOOvq5mIHlx5iqeuCkmG7fGqoJcO
	LoY+yYwpj9PBUqMT6R1P/IsCkPavwE2oU+LMvQOVXgezwgx1Ng8Xvbkvt5QAiykR0xJihZGqrTWXA
	FqferlQCLjSMe3fHykeQU26g29XlnOCGa4qeHEVDAIiqsF+9TdZSGgzhiP52R/p2sqhIVLjeOPFj6
	hm8GESvMwcOf0e35DqepRMiIjS3sMS3xklCcH+3cJdGP90crLZVj2IfUvbkD/ZizujYjPOVK8HsF6
	IKsSAk+AFU9dKhkDQ9Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XSG-0004md-Tr; Wed, 04 Sep 2019 15:44:21 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XSD-0004m7-AD
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 15:44:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id n197so43263586iod.9
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2019 08:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TH7Dg9ljf2Vj64HDPlPhmHR1vea0MJI1LXKjcd+873A=;
 b=eTP8Lj0BXh8sZhX3RO0A6HzDQf4KNS0yeIXIPuARLp0MohKONAlQ3xxDrzBBeQZ0ns
 PLccEPHtAm0Nc2vs5JrgL/y0Jpu5fYE9XW5X1vla8ude8uQPpMtEF2fL24cR+yatfBLC
 CxV9CcHgMcZDh7APyBb/UNBW4fVk3jzrzOT4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TH7Dg9ljf2Vj64HDPlPhmHR1vea0MJI1LXKjcd+873A=;
 b=lzQHAQp4iu+J3wu63k4C8+wS9VXz+meZ6rykmqRl5bSCm3ppnj6Q9jgXaByfJSBWI3
 PnpFYit8kxlY9qfkW1dbFQrp25Ra7mqrU67Cay8I7hvp9mWA13UWzcdLOvoNg0hUSPpE
 R6nKUUpqVGgmK8v6WAiNRuJpp0Y5RQAWz2V7CcKrvBOcoeTNv/K6Sa4ahBskLUPRSg+t
 DsgQgr8RDOanuLHVqF9v7jxYSh0i9Ln6jsYT0l0zEXNKXng8KCdCmPXrddcGkeuLlKJ7
 XURT/6CfxT8OWu2PQ1WfjSgUdZB2Q9GB1Dr2A4jKDIep2H+DF4dRQVe2TpWF+RLD7Ddk
 9gWQ==
X-Gm-Message-State: APjAAAV2S88yXfU7uk+gG3UQBcr9nCJagEhnwckephJZ2CVwP7iCUuB6
 90tMAS+vhlUcG5dw7C/gilU5Is7Ew2c=
X-Google-Smtp-Source: APXvYqxl6FD760ekw7fhCuTZQCDGfn8i+K+KMUhtBPan5G0xnuES7ti78TMtOd/ZA13bk6a3D5VskA==
X-Received: by 2002:a6b:4411:: with SMTP id r17mr879800ioa.283.1567611855435; 
 Wed, 04 Sep 2019 08:44:15 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id a6sm20137426ios.20.2019.09.04.08.44.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Sep 2019 08:44:15 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id u185so41369836iod.10
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2019 08:44:14 -0700 (PDT)
X-Received: by 2002:a6b:6e0a:: with SMTP id d10mr954243ioh.141.1567611854025; 
 Wed, 04 Sep 2019 08:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Sep 2019 08:44:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
Message-ID: <CAD=FV=Vwmj=LehhLCN5OBbEfNNXp9gULLYRoVV86HtqZBxvEjw@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Using 180 sample phase if all
 phases work
To: Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_084417_380708_D27EC151 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 3, 2019 at 7:28 PM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> default_sample_phase is used to make sure the cards are enumurated
> properly and will be set to 0 if not assigned. However, the sample
> phase should depends on the tuned phase if running higher clock rate.
> If all phases work but default_sample_phase isn't assigned, driver
> set sample phase to 0 for this case, which isn't the best choice,
> because we always expect to set phase to the middle of window. To
> solve the following continually issues we have seen in the test, we
> need set phase to the more stable one, 180, if all phases work.
>
> mmcblk1: error -84 transferring data, sector 1735064, nr 8, cmd
> response 0x900, card status 0xb00
> mmcblk1: retrying using single block read
> dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
> mmcblk1: retrying because a re-tune was needed
>
> .....
>
> mmcblk1: error -84 transferring data, sector 1728672, nr 248, cmd
> response 0x900, card status 0xb00
> mmcblk1: retrying using single block read
> dwmmc_rockchip ff0f0000.dwmmc: All phases work, using default phase 0.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>  drivers/mmc/host/dw_mmc-rockchip.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index d4d0213..9ef9723 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -209,9 +209,8 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
>         }
>
>         if (ranges[0].start == 0 && ranges[0].end == priv->num_phases - 1) {
> -               clk_set_phase(priv->sample_clk, priv->default_sample_phase);
> -               dev_info(host->dev, "All phases work, using default phase %d.",
> -                        priv->default_sample_phase);
> +               clk_set_phase(priv->sample_clk, 180);
> +               dev_info(host->dev, "All phases work, using phase 180.");

This violates what is documented in the device tree bindings, which says:

* rockchip,default-sample-phase: The default phase to set ciu-sample at
  probing, low speeds or in case where all phases work at tuning time.
  If not specified 0 deg will be used.

Specifically:
* You don't use "default-sample-phase" at all when all phases pass.
* You don't default to 0 if not specified.

Personally I think we could change the bindings to say: "If not
specified 180 deg will be used" and then change the code to do the
same.  If we wanted to keep the "stable ABI" that is device tree we
could also just do the "180 default" for new SoCs and then manually
add the device tree fragment to all old dts files.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
