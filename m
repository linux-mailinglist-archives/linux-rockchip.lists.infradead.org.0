Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815CC5F167
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jul 2019 04:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BfKdhwotLS0PxAXWaXJSDrCoiAmpRhUxgwpIa+6Jfk=; b=eCOI9gAz/kJ+lM
	NPE9WzMHpaAj4vO5ECAqqHyuV+PGPyAIybEfKCMyrEfSA2rzOp9ON/zwxqqz6RYlRId2PqogxrAOg
	BU8BR8ii7PgYFAurW5mwUYqCkZ8NXoiZEA8NodxYDDhWhlBZpcO402rY+0O9equTA8EcOKP9NeoQq
	RELoBeMRvUCBYsZd5QwW79WWueMAYrmFPZm+I7+TNOUxCBRiqkyCTnB4byD2i5c1s35hkH8doh694
	nSsyC1g0dsr1+lnkH7rnQ2Nvf2Zh+/aLR7w6RtnZj1WcogdBAKnHM9FOO9j6Vkwf/uAEkvO2u/VaI
	WQ5lFYFFZy22xmIdQmZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirPa-0006Qj-CP; Thu, 04 Jul 2019 02:23:50 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirOx-0006CO-Nc
 for linux-rockchip@lists.infradead.org; Thu, 04 Jul 2019 02:23:13 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so3084157lfh.13
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Jul 2019 19:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+J4G3+w2a6rqwsRd6naD6kRP3PZ6p5YJ6mI8owInsUY=;
 b=pnCXRsvCD/RtzrcOSH9XKM3pNpuZOmeLWIatc8U7JlkVMu98m1tFHyX9W8gckaXPfe
 b17ruB40N/kd408MIOehV98cOnIGdS2i5T85oAKHFtbQungZe4RQZXnoR3DvdoUOY49T
 A8Qralpdl860WzVeFgeSpieoUbth90cEXEwDDfG2ufwTCrsWhxFOKEEtU/VdnRP/Ma1P
 crPt3nVPNZZP45KVGlF3FSxFbEvNPhhYU+4eKXQyZkt8EnoLeDvdkLNiM9WDsGZxLtVf
 vkQFJrmKD9kDeXJtME/5Hl5v6hn8fG8k5HTT33wk8Phx9tWBoUoQbHDcM06FR4ZmfGpB
 MiQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+J4G3+w2a6rqwsRd6naD6kRP3PZ6p5YJ6mI8owInsUY=;
 b=EsLZAiGn99VZPNaKKbFpNBxN9ZWw+kYcN12KMUwwnkd/2yKCX7ENRar83kpSybY1CZ
 z2N723Izfv4HpU5VMitSIsoThnfcsIIM8eCIJ0b1XRDVjW4mo6Khm3Hv3Cx7OEwBnIWO
 SWcXUfMnrfTvVqYiAOLReuzIr2osltp3q+dv3utk/SgB+j/tpwt8jD4QfvGMqhTC/QUU
 vR1A/As82B5iaJ1Ntp/BMp6cUaMj6O0g7UgUNQXqT4AhaehiIRtohNJS/adf94Ags1Uc
 o9eNUkbb2ccjcRs+hYC37elS67oZCSWGx2ofJUkco04VJr7tX1BSagBpFYcuPVHtF8XC
 9yAQ==
X-Gm-Message-State: APjAAAWphp2gPjp+vh0Ddj+7UdbQXQxASMMKRoTzor6a57EAJrgkMMFL
 pPjyf0wje56sXE+0zGmIW89LTw==
X-Google-Smtp-Source: APXvYqwF1IDr3Zsnm8ndisg8PoI+GaRFZUtCxu7aZqBri2om9izSF5ZXvmOqrvAsLWKwdQBn04FOlA==
X-Received: by 2002:ac2:4351:: with SMTP id o17mr297792lfl.100.1562206988730; 
 Wed, 03 Jul 2019 19:23:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o11sm635357lfl.15.2019.07.03.19.23.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 19:23:07 -0700 (PDT)
Date: Wed, 3 Jul 2019 19:20:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] soc: rockchip: work around clang warning
Message-ID: <20190704022043.gwcwasi6jni2qctm@localhost>
References: <20190703153112.2767411-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703153112.2767411-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_192311_927945_223E64A9 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Heiko Stuebner <heiko@sntech.de>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:30:59PM +0200, Arnd Bergmann wrote:
> clang emits a warning about a negative shift count for an
> unused part of a conditional constant expression:
> 
> drivers/soc/rockchip/pm_domains.c:795:21: error: shift count is negative [-Werror,-Wshift-count-negative]
>         [RK3328_PD_VIO]         = DOMAIN_RK3328(-1, 8, 8, false),
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:129:2: note: expanded from macro 'DOMAIN_RK3328'
>         DOMAIN_M(pwr, pwr, req, (req) + 10, req, wakeup)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/soc/rockchip/pm_domains.c:105:33: note: expanded from macro 'DOMAIN_M'
>         .status_mask = (status >= 0) ? BIT(status) : 0, \
>                                        ^~~~~~~~~~~
> include/linux/bits.h:6:24: note: expanded from macro 'BIT'
> 
> This is a bug in clang that will be fixed in the future, but in order
> to build cleanly with clang-8, it would be helpful to shut up this
> warning. This file is the only instance reported by kernelci at the
> moment.
> 
> The best solution I could come up with is to move the BIT() usage
> out of the macro into the instantiation, so we can avoid using
> BIT(-1).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38789
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks, queued under arm/drivers now.


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
