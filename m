Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD1639502
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 20:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v8ZkeH8qDqiDxyCQYWmbWFQpHjDz0NO3JjiGraO8o4g=; b=jGiUl1Fyz0p490oFbkgFHL1rf
	VIkLrAQ9yyWbQ8i5F2Wvh1nI8lmZCZPxkd0YRQTOKTMG4ApkrEwMlaipzld396v4eHbSG9l+arfLt
	+ZGEjeGK4CwNr0MCtTlx+Sah2D78H3pqMAixqZaJRvzYNl3JaHf0mYt/p95FDqnBvLqqt/84xR/OZ
	jL7xDAPqFWQvnvGto2iVWyg7UU6R3X6ub2yROAAT2EMLll0STM4N3+qXOeHEJYNKll5jOTl0u4JHr
	Q+YCKh86CV0vjoew9yHgLKe2jY87BurDMZLfSYMdsGS0S7wbudzPvlU5fkwQFMksvzduROMFIzrA0
	vDsbp7yYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZK2n-0008Lw-Pu; Fri, 07 Jun 2019 18:56:53 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZK2k-0008LI-Gp
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 18:56:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so2522179edv.12
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 11:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=pLHqHIiNEMpqBsq1VQWJdA+f/ogiGuALrvYvfOsre5w=;
 b=JKBmHUupUT1En6Wm/PaAfDvWLs9G4reHIL/Dq7a28RXjQhW1bvj1OuB26Otd3Nzv/F
 5ZMid02V6ON7krE7muBA6YEhkfXI5N+61Qho5iv95IBFh/MlqvIhkuqMpLLIh4Gx1vis
 dD6p2HlT0owEbyLmy2rgkQ9McTJKn+DOb7v3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=pLHqHIiNEMpqBsq1VQWJdA+f/ogiGuALrvYvfOsre5w=;
 b=VQ2f7+ve2dvl97qCaJhHRRjyux0HkSG358UC3FKLjv8e4/TYipetZc/7SSuEbCmQ03
 d+Yiqnm24XAzaaPG6iyWDJG/gTDcXQ+9nqqdxrpO8myizX76E9pvV7qDX6ZOAj3IIIB1
 oJ9TyOQufEmqpdqT9uAjZDW3agWo3rpv64qmABXA46tvKvIj/CvM1tadYXdFGwTVhuOc
 wieAedqpVxkyrLiO0uXoyIzoNpOlwmOQ+irLA+2czqxeWKXaAjx/jZvQa4sS8Q7SrDiK
 ZUbJPIo/fja2atPNLuZzTAk4Ttjf20ul9ef2b9Kb27+f1BkKhAAVK13FLZDsVQIjoYEz
 x45Q==
X-Gm-Message-State: APjAAAUwSbuxBH9w0UUXCFabe9+2W44Y5P+XDWaYi414Lrc7qT9bKVt4
 CwsJSr5Uhdsp6MEV8lHKhWgh3g==
X-Google-Smtp-Source: APXvYqy/QInNnOY8qOmxzPqvg5vvvunnvhTKvbvtqEaMLJvI0LfXEgZqTasv/6lBtFt2xGxRunVBpA==
X-Received: by 2002:a17:906:4ada:: with SMTP id
 u26mr28479238ejt.258.1559933807813; 
 Fri, 07 Jun 2019 11:56:47 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id f9sm501183ejt.18.2019.06.07.11.56.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 11:56:47 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>
Date: Fri, 07 Jun 2019 20:56:43 +0200
Message-ID: <16b334cd9f8.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAD=FV=XVmCYWe9rtTFakq8yu67R-97EPyAHWck+o3dRXzHCchQ@mail.gmail.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com>
 <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <CAD=FV=XVmCYWe9rtTFakq8yu67R-97EPyAHWck+o3dRXzHCchQ@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_115650_560076_3D490F0C 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On June 7, 2019 8:06:30 PM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Fri, Jun 7, 2019 at 6:32 AM Arend Van Spriel
> <arend.vanspriel@broadcom.com> wrote:
>>
>> Right. I know it supports initial tuning, but I'm not sure about subsequent
>> retuning initiated by the host controller.
>
> My evidence says that it supports subsequent tuning.  In fact, without
> this series my logs would be filled with:
>
>   dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ
>
> ...where the phase varied by a few degrees each time.  AKA: it was
> retuning over and over again and getting sane results which implies
> that the tuning was working just fine.

Ok. Thanks for confirming this.

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
