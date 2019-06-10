Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA02F3BA16
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Jun 2019 18:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKH6BEkaz90DHs5rSbJo6NWXvZanJjLanI1YqSDDs0Y=; b=ARKQRSwOlg2sXs
	HqUft6oNf0fXtpPi+c8JKpI3UnGVGixgLBF6gplhsm+b3x7VLrgCaMGPoIfl5szEwq9HiDg1bmOpt
	NVePjYiaIuHQxScL+4Lr+W2aMb/s6phZOUVfT0OONHCvhVO0sI3v3sa7N+iyFi5t2qZobt1dqlXUl
	7KHr0ps5MMUyEpygTTn2qb7BD5J9oFNEKDfK8qArfpQgwhPnBRJIs3r02OtsEToeH9d2vAkl7TOBW
	0TO860Mb1hJU33NJrim6uq4Ukj96bsfs60geuL/hTupPREbARWaDM2I9TTNQVzkMe8VDfyHKwOrS6
	VggnBstYCvjBQKxl0uqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haNZx-0000rT-BP; Mon, 10 Jun 2019 16:55:29 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haNZt-0000qt-JF
 for linux-rockchip@lists.infradead.org; Mon, 10 Jun 2019 16:55:27 +0000
Received: by mail-it1-x143.google.com with SMTP id j204so113675ite.4
 for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2019 09:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jigJfFRZkdX+fDWDB3Z6i7DXek+TxEO+iFMi0ontPyI=;
 b=NS6I1EfOS4Qln6O21W/qaWiFUMqu8lDW/jqsVurVgncwNQNmgiZ7ryVM5WNjFbA1tg
 6okpyEoD7k4sfn32wuY4Hw3AvMOSF+FH1cyzQTqePdpEc4PxU4V1MR7kC4tb8xOzYBLB
 9dcsOIODkMVEkDakGWmtbuSR/ZtezbmGzY+/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jigJfFRZkdX+fDWDB3Z6i7DXek+TxEO+iFMi0ontPyI=;
 b=YivUKUn7lM4Yx7Sb10YTiv6MKFXNBeoYxrq4WvVN7UXGIwO8mEMVti3du+4a4E1Lvd
 a+quGnzpIN8RrI0/RzlUjCTTtn1LPnNZ5gBG+5/qc2lel5NhIqopEOaJrZ5ik4VtoMPg
 ld4q/AU2BwCJlRAX+SSaVNN1vTEDLsyV6j8sWXmAhLVU1hJJeWgsSmSHxlzIByp2zDQ1
 0zR+qvgPqhUnrn+fKLZPE28tHC6Sgn1Ysg7eTZysgIpj2Z7uqjmG7P0RzATyDanHpbxD
 n1f7IdE1fZ9gvlJODn5cvNJ5D/lmklVrUytcymtM1Imdj+AxDNKlq2vZG7thO+jtK4d/
 8zJg==
X-Gm-Message-State: APjAAAWma49Za/VskapbpFPpvQQ80i0vRN6KBRztwe/QJarK3+X9S/T0
 CwkCWpPzDKIxwcrHPS/XpDuMvC0dOBY=
X-Google-Smtp-Source: APXvYqy4wzC7oQgi7n6wYmvE9X/TwLojlSs869e6pSuf+53VOYNzPYHv/ub0UUYHKcngiAU88HVc4Q==
X-Received: by 2002:a05:660c:acd:: with SMTP id
 k13mr14491779itl.13.1560185721519; 
 Mon, 10 Jun 2019 09:55:21 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com.
 [209.85.166.43])
 by smtp.gmail.com with ESMTPSA id z7sm20282itd.31.2019.06.10.09.55.21
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 09:55:21 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id k13so7436328iop.5
 for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2019 09:55:21 -0700 (PDT)
X-Received: by 2002:a6b:b642:: with SMTP id g63mr8234768iof.142.1560185419663; 
 Mon, 10 Jun 2019 09:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
In-Reply-To: <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 10 Jun 2019 09:50:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
Message-ID: <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: "Hunter, Adrian" <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_095525_800831_ABE0A1CE 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>, YueHaibing <yuehaibing@huawei.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 10, 2019 at 1:56 AM Hunter, Adrian <adrian.hunter@intel.com> wrote:
>
> > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/mmc/sdio_ids.h>
> >  #include <linux/mmc/sdio_func.h>
> >  #include <linux/mmc/card.h>
> > +#include <linux/mmc/core.h>
>
> SDIO function drivers should not really include linux/mmc/core.h
> (Also don't know why linux/mmc/card.h is included)

OK, so I guess you're requesting an extra level of "sdio_" wrappers
for all the functions I need to call.  I don't think the wrappers buy
us a ton other than to abstract things a little bit and make it look
prettier.  :-)  ...but certainly I can code that up if that's what
everyone wants.

Just to make sure, I looked in "drivers/net/wireless/" and I do see
quite a few instances of "mmc_" functions being used.  That doesn't
mean all these instances are correct but it does appear to be
commonplace.  Selected examples:

drivers/net/wireless/ath/ath10k/sdio.c:
  ret = mmc_hw_reset(ar_sdio->func->card->host);

drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
  mmc_set_data_timeout(md, func->card);
  mmc_wait_for_req(func->card->host, mr);

drivers/net/wireless/marvell/mwifiex/sdio.c:
  mmc_hw_reset(func->card->host);

drivers/net/wireless/rsi/rsi_91x_sdio.c:
  err = mmc_wait_for_cmd(host, &cmd, 3);


...anyway, I'll give it a few days and if nobody else chimes in then
I'll assume you indeed want "sdio_" wrappers for things and I'll post
a v4.  If patch #1 happens to land in the meantime then I won't
object.  ;-)


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
