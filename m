Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2104220D
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Jun 2019 12:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PXsLpr4De1UVu9sb3d8Nr8gLpWBpGwvlVYt7ESMBnk=; b=fLWbJ2J35L+UNO
	+pzY26ENpCdmkTLG1k2wSG3J8LYAHa4duys4iwg9Cm//xGZcd6SgquDtsiy6ury2GTKKvknEeceoM
	0Nh7b02Uv+angwS9U0+P4M36SEgfAB8U1TtqUgmOBhwu/lytlvaa7rTEA97fCjpX2rHNnXpewl3Wz
	7abW3nF54J1yGh+S9Ycr7RWOjs5CetRvFPznzt1senQZAkpjw5RAwW0CsAgnS57NfScZ2YWrnriWP
	5F3BU6xTSg3xxKnYN9wQjUMoz8Ir1dxZP9KhwcKA/zbsgAHsVj9G/eysB+2yynKsBum50KR+PrC0R
	4RsE87xM1dxYDWPXSdgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0EA-0007Ad-Mv; Wed, 12 Jun 2019 10:11:34 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0E5-0007A2-Dq
 for linux-rockchip@lists.infradead.org; Wed, 12 Jun 2019 10:11:30 +0000
Received: by mail-vs1-xe41.google.com with SMTP id k9so724083vso.5
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 03:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vwwsd0tdKxa00vg2i3C1zrYsYmEGYn7C9UHSqxLUOAY=;
 b=cNuXOLWUPlPjzsuZ7Z6BuN/fwPgNEqYjZXIJhRFvcMn54FRyd3mnAeCRjTPJEmoRxx
 xDPmcvmPVRh581RobGwdUC2EsTF2EhwhYlmpZcuZ1sQCcejbMGT133Abgv/YaQPzr3CV
 ///CpGcB3drMtVF/D1a9lHuUcbiWPZGDYJrkeshfN6hkMqBjOgV60A8iRBMSAj+m6YUx
 5kpoq7HOqxzFwsqtg4spRZYFg0/dpuVf/aZaHr8rxUguZigoD5SiyuF8nBrVAclPtY/I
 ASCtN2N1+XGfiS8vxP+riDAtTtka9iDhNlbnybkrK7T2xWiFKG+OL7N38Ketqfqe1GKg
 mi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vwwsd0tdKxa00vg2i3C1zrYsYmEGYn7C9UHSqxLUOAY=;
 b=ScipVhCvycahtxgfuLBCsaqeiSWbAgEZHxJDhWtxvjxCP/2tPecJLiVygh1Dv/Y0PW
 HYlcWkRGi9+VKPNaOsy19k/ALfNpNjX/rDkIhyDKtyOcU0FR6Ucqf9yiYDsrTba/5AKj
 vxw2ongqAjfFmbKyr9b6rzlj4T2lnEuP0BslailW1Zfn2y3Z/O1hAlpijiqXKrmYYOjU
 3Eu1ZukIQqwa/vIL+Wo3d2vsV9v1ne3GCqsuVKXpFPUHQu83QZaaK1VSZW22TgjktlpZ
 55w5vAQ3t/SzFa70HWsjlEjikCcxi+Uy25rqun4KmJl6F/P1QISKi++TbmZ6/+ead5I1
 s7Tg==
X-Gm-Message-State: APjAAAVEUtFeF5T3QcNZ1Ip5gxKCG7JOP8I04lLeLU2/vNJWH4cyR7Q3
 LdH3inRtRklwdkSeojIaVYdIJ6p9hz9oBKRKHr5UBg==
X-Google-Smtp-Source: APXvYqz9HdjKJz1FgwE/Nx/EZT4gQSK6X7I7/l+mUBC1IPdGylVrfi3vGB2PufieZ8KgmvsoIDewFF/91qoctXVN1SA=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr9599693vsp.191.1560334287942; 
 Wed, 12 Jun 2019 03:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
 <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
 <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
In-Reply-To: <CAD=FV=U8eo78Ee9xjhGXJMv=8YF9o89KLX024GH3iBRnRjCRvQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Jun 2019 12:10:51 +0200
Message-ID: <CAPDyKFo=QMRTkNYUVSE2AqiZgytkTVRXF0Mvznn6trVT4-cR=Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_031129_494232_5216FCE0 
X-CRM114-Status: GOOD (  15.90  )
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
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, "Hunter, Adrian" <adrian.hunter@intel.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 18:50, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Jun 10, 2019 at 1:56 AM Hunter, Adrian <adrian.hunter@intel.com> wrote:
> >
> > > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> > > @@ -16,6 +16,7 @@
> > >  #include <linux/mmc/sdio_ids.h>
> > >  #include <linux/mmc/sdio_func.h>
> > >  #include <linux/mmc/card.h>
> > > +#include <linux/mmc/core.h>
> >
> > SDIO function drivers should not really include linux/mmc/core.h
> > (Also don't know why linux/mmc/card.h is included)
>
> OK, so I guess you're requesting an extra level of "sdio_" wrappers
> for all the functions I need to call.  I don't think the wrappers buy
> us a ton other than to abstract things a little bit and make it look
> prettier.  :-)  ...but certainly I can code that up if that's what
> everyone wants.

Are the new code you refer to going to be used for anything else but
SDIO? If not, please put them in the sdio specific headers instead.

BTW, apologize for not looking at this series any earlier, but I will
come to it soon.

>
> Just to make sure, I looked in "drivers/net/wireless/" and I do see
> quite a few instances of "mmc_" functions being used.  That doesn't
> mean all these instances are correct but it does appear to be
> commonplace.  Selected examples:
>
> drivers/net/wireless/ath/ath10k/sdio.c:
>   ret = mmc_hw_reset(ar_sdio->func->card->host);

mmc_hw_reset() is already an exported function, used by the mmc block
layer. So I think this is okay.

>
> drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c:
>   mmc_set_data_timeout(md, func->card);
>   mmc_wait_for_req(func->card->host, mr);

These are not okay, none of these things calls should really be done
from an SDIO func driver.

It tells me that the func driver is a doing workaround for something
that should be managed in a common way.

>
> drivers/net/wireless/marvell/mwifiex/sdio.c:
>   mmc_hw_reset(func->card->host);

Okay.

>
> drivers/net/wireless/rsi/rsi_91x_sdio.c:
>   err = mmc_wait_for_cmd(host, &cmd, 3);

Not okay.

>
>
> ...anyway, I'll give it a few days and if nobody else chimes in then
> I'll assume you indeed want "sdio_" wrappers for things and I'll post
> a v4.  If patch #1 happens to land in the meantime then I won't
> object.  ;-)

Adrian has a very good point. We need to strive to avoid exporting
APIs to here and there and just trust that they will be used wisely.

If the above calls to mmc_wait_for_req|cmd() and
mmc_set_data_timeout() could have been avoided, we would probably have
a more proper solution by now.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
