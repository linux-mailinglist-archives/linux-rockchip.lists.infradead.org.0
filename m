Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A70C424B9
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 13:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2VNizwMUljTS1rZ0GDhRbG2Kxp8D6Du0Zpu0M/vGvk=; b=TChumhYFDYFLyP
	k8DChnZk9P8gzsYannNzMBHmW/yKC9q0CfGP0afx/bFwhEU7aPG3z4U8lghphCzDvCiCjCHWmo+F6
	wpVi9GVFtgkqdM0hBVaulN4szOEjdvY1ie2pIi5BwaSF/BP9GggZY4bZj3hbM412oRkOzwb0AlhyK
	B7ePOEqM9YUEvyx/SqxwHbGaajBbE2X1DYGVh5IYG8viI3WPHgLux0tI4w3T03H6aLdRXuyytJqMe
	ka+DZj6Xo9okwN93SFIqQA6ZUGIjxVHw/IYuXKxwwfAL62DFQoasRl8tbTslfL4E1N1BmK1ykYmRE
	+SnW48H6TxedEHpWtbvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1l7-0005xc-Co; Wed, 12 Jun 2019 11:49:41 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1l1-0005lO-KU
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 11:49:38 +0000
Received: by mail-ua1-x944.google.com with SMTP id 94so5779031uam.3
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 04:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fL5+yAvFpszDdwrzAhEA7Ye5Luf0zjBze5h9taUU+T8=;
 b=IWDvMyC9P5AiIW64CutGGY3WzwhVrLGaAwN6J8EHfw77V8yPYgGHANQJg8t7eiy16v
 uMqvroecwGxZQhVf/oKmaAoo3x8Zv6b+o3OUoxe8P5B/4oLM4GhchWkpjqvRt+VvIA3l
 OJa17Pfk4PgfzzVZjGVPa3deTyFnbxuDADm7WJ9Sc4pnYOc18CjiqS7J44hKqeXxDKCr
 piablk8wr9MlnupnliBftfIn4flYndyYx6WkOtHT3Ju+Yeph+UIiWKaVCoxSyXhYEyIM
 27B1y+7ahTL2MLr2dgibSIN4AwXg/MjbIfq1YkfB3kyLgGXCBK9ZErt71PtnX/DZhIjk
 4Rlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fL5+yAvFpszDdwrzAhEA7Ye5Luf0zjBze5h9taUU+T8=;
 b=BzxGjwE5Eq1OcPtZW8u+umSDRuciYeSZosxafY5nKoxnxkyCEMtVqSrzlSPIOkgRxO
 yX++zIJrV5V6OgTLG76iZ++Q1Gpc3eyt9Kz7gN46R2NAeLW51ifQR8fIzpQgYBqpx2tW
 pES55yrQ15FaJFAZHKXrr5xeOGIBbkdMsO2TqsYTGUmefqIpXMPHjD3juw5r1HdvlMnK
 kiiUJKaUESjW1S7wcM4zylnzI5Nn/xxztL3dGKFDaVFd7ubWbgBiqKEEaA+p2moEBUuo
 LGoX8JDz1sffhZjCcqUly6h0X/huVso9VuxjSX4Pw5YivoyB2aDQOnovM+k/TXAa0xxt
 Z7lA==
X-Gm-Message-State: APjAAAVr9BhF94TduQbGYzwttWyJeGm1KrJ1SYpsRzBtj/C1YB4ieCGN
 N0Nwz971NG5/Urxdt+8Td9k4a2xbuaudEqke138QllEo
X-Google-Smtp-Source: APXvYqy9Znw8HxyqdcJxmFY7a6Iw36a1N9tWz9NbjPT8mcjJotx9MWPFEjWPSQY9+rfUfMt64hGDugr+7AVqGSrtZqY=
X-Received: by 2002:ab0:2705:: with SMTP id s5mr576634uao.104.1560340174391;
 Wed, 12 Jun 2019 04:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
 <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
 <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
In-Reply-To: <c7c6d3f4-ebb1-8964-0616-973fae1ab47d@broadcom.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jun 2019 13:48:57 +0200
Message-ID: <CAPDyKFpM0+FfvoMo8Z_hxM9rzSjeQZHCsA2SPa8WP+SRDhhsPA@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044935_709402_E3259B22 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Doug Anderson <dianders@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, "Hunter,
 Adrian" <adrian.hunter@intel.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 at 13:11, Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On 6/12/2019 12:10 PM, Ulf Hansson wrote:
> >> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
> >>    mmc_set_data_timeout(md, func->card);
> >>    mmc_wait_for_req(func->card->host, mr);
> > These are not okay, none of these things calls should really be done
> > from an SDIO func driver.
> >
> > It tells me that the func driver is a doing workaround for something
> > that should be managed in a common way.
>
> We are using some low-level functions passing chain of skbuff to the
> device using CMD53 with scatterlist. If I recall correctly Marvell made
> an attempt to have a similar function for it in the mmc stack. Not sure
> if that ever made it in. If so I can rework our driver using that API.
> If not, I can make a new attempt.

I recall there were some patches, but not sure why we didn't merge them.

Anyway, if you want to move this forward, that would be awesome!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
