Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B34A7BBF
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 08:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHCVaauWoUaQiCCuCBcc0Qo5kbWge1GgLlwWRbss4B0=; b=qQx4dpUmYppiFj
	nkaz6CDXIsk8+C5kt5gXeaeOAu+0ILKTxy9gByaf40mTD0jguZGR11X8yG7HzR3cywPgv5eknSDUQ
	Y01p/evE382MpuXRbiCK8cjh7IPRCXIKYz5aZG3WFBRuZqk8az6UaIUB+xizsQYvWISPjUBtqtfEa
	0aUqC3sVVLrgobx53WU7dMNItLydHD5wfGyzSfBDrkVVpK/7p8XCIrkpEFC1j6uhMOZy3JE4z05iH
	eKag3kW2G8ENHFev5R1FY48QvJ2CBOXbVsC/r6AGPQlQv/wbXGJFkKnSsm0ZOtu3T2YI3yUBbXmxi
	DLTFS9jca9V9qWjv+zPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Oqw-0007md-Qd; Wed, 04 Sep 2019 06:33:15 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Oqi-0007bu-RD
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 06:33:02 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y62so13025977vsb.6
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 23:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uji7ZwBx64gRfxdB6F0eCR6oa+56phUDHTpbBifC9Ds=;
 b=uuHYSAp5LqDb5RG3NrUCRi1NMhbcInlwuXVPiRVxOYxObhvMhiw+80wIQlCcIhAoq6
 X+y13siK+NfTrZvcQgBjRLw6dNi13FLKdWJZmZlVVVFlbgbpJqaFLV1AJg7st0blvz78
 8LIFkD6z/lUbr8+Cff+m9icDZMj6wC7m7aJYoCM5Sm1rPuCNAZA9Y6NJ5Vx6DfYblcBf
 QHnSkyL/bx5gt6qbVt9RKdCLK6VJEH4gE7hGW+Zj5v7kcOF4TMt59h3pR2OnyZwl3eFQ
 npzC5o/lyiZmgjAdaDkW68RdKstAIlKzqO5t7ZXapN6a35XeVOeTJ8XTHcMIDSMpn/5D
 0tmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uji7ZwBx64gRfxdB6F0eCR6oa+56phUDHTpbBifC9Ds=;
 b=Xqhj/XryFAl/q3MDdZpmDeBUyoag9rdIvSq8pS2TpyFYB/MVtdyulL3MKeZxlW/Kep
 juZq/cR/PQKQtCVInnLA7iEk6UEuW1SBBM+Hl3J4pScj2TqMAMkGMdCUtttZPU6dBIGi
 8/gpSBtTevMG8MHBRojrCFvhDY3HH6j23sAfLhijbmYqc5cfLr8P9p+1WEK7NrH4v/0e
 5xZjSspUWByBPyfFzsb+QWaIcqROzTtkzQVvcgVoZepSebLGcEa5Cytx7f2WJBDXa2zX
 4IhPsRhn3W0ruP4ihKIpi3sXsyUYSJU0rCzfVXEyM15ldZbS1onrxjcamJNSFVmKmm8W
 5dqg==
X-Gm-Message-State: APjAAAVUQb6WZl23t9DaK9BGfUkPg1CRX0fgXqv51LXeVLPgDskc76rL
 OymaBi39QDzwGFJOd8IbuMbN/Ezqs8WLwxU5kds9Dw==
X-Google-Smtp-Source: APXvYqy0pJF2kz23GupGecb1aqldnQpwpBN38yl4NOQVJhW1Q1GxkznSdDp3mQznh4vHtU9ys7RLaZYVj3n4LY37qkc=
X-Received: by 2002:a67:983:: with SMTP id 125mr15702331vsj.191.1567578779701; 
 Tue, 03 Sep 2019 23:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1567564030-83224-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Sep 2019 08:32:23 +0200
Message-ID: <CAPDyKFpmh2zcz7=zL77XGBHUhxcFquoMSiRHf8w3dnvwH50aYw@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Using 180 sample phase if all
 phases work
To: Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_233300_905839_158B26BB 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 4 Sep 2019 at 04:28, Shawn Lin <shawn.lin@rock-chips.com> wrote:
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

Is this ready to be tagged for stable, or think its better to get it
tested a while and then send a backport to Greg etc instead?

In any case, applied for next, thanks!

Kind regards
Uffe


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
>                 goto free;
>         }
>
> --
> 1.9.1
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
