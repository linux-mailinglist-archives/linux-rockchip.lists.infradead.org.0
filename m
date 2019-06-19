Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE614BA36
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 15:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dd1XCpgIlK7Wqfkkm2iZSwEvfcxTH8vjCGRTBmdd2wo=; b=BnmgAc5jcM1UGU
	zDE3I8AYCQlrtKObfQalzFtPgLMbTqIE2OuOl7+DiV/mJQH3bZ+UrL3btVgwbFCdG/Tvnnz2oBjNH
	OLcClcMm9G5RnQaTdDPfCNUAfzoChkrSOfmIke9VJzuozYOgSMX4GsHIXSu27+Z9Yl93UPDgwgUHK
	BGLSltt11iwHq2DQKBSrgKl7dAS4vTS1whsFAV+YCh0cSp/c1BphL2rAD9j/RxiV/GZzQdoP41OSU
	+Oj2jOB+CBR1BG8FtjFoCj4/PtWc/g0bUIZEtZ/Zb6wJhrNQYWl0Ae0Ft/iPE0NGIeoK0zu0RdDK/
	w1AQkzlai+6sEQaF/zmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaob-00084s-L1; Wed, 19 Jun 2019 13:39:53 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdans-0007UK-HV
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 13:39:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so3296512ljh.7
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 06:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V/dJt5z6+5T//xP2hKbohs+3zSN9ia0YmaVD5Mooj8E=;
 b=lj5c+ibuvHjzPCsX17q7Y3KoKZXmXf5as2msSVeteaF3EfyUZ1XdmZG0xCnTq00iXG
 RQA6DK9heaHTpK0RpC6vqWXZBYQbYUxRr1+Ajaqs3oPKRfcqt+pdqOGUyOIpBbrHYJqs
 J15lDIPbZGmMOgMHv7cUibzQId9y+kIUb5rJvJ+zAx8P52qthYXna2XybyzB7uIevjtM
 dJscLdIsD3ay7ZUxWF95HsbwXXvXwkmUiFbIji2YwJCIQYFdK33ilKKYFUpFrZS95nAt
 y4Lq7AfPoj00B9g2LhecPs00Y7Lf0Ewj87dyr/iDRkuci96wPiMRcPdO3vrHvu/EbIWM
 hOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V/dJt5z6+5T//xP2hKbohs+3zSN9ia0YmaVD5Mooj8E=;
 b=pJVfO0MG/FzpvoBf/B7O10WUwii9w+Zcpu3LHjOTAQxpQLd+BcZsEJ87QpphHX74kV
 4MeQukGEJXKbm9Cu5ncofpxlXDP+d1/U81eCyjg7epXJLSoRAMYSLuHTgLhT23jvNqzi
 Do5vbXieC0WD13IznKkTlyy/ClBVkeL885lnElF/RYdivBf3gLHhLhgtNVD4OL4ZXN0j
 x3UKIsqYdmm0oOeOrlPLYWaFW9+bQzoI96k+xdlGPzgn2L0VV1TbbraC69MsSKYvBBvB
 2/cSPnP9kr6lHoiy+KeL3jnOoC4oSUB8IA3so2doCr62Tz/FQIfp0bXhCUM5ESziGMLE
 NDOw==
X-Gm-Message-State: APjAAAVLTQ3jmCz6N33Z/qdbDX7nHbk69eCgjkg/jqUeeZVhujj/ZEtv
 dea7oOPnJ9OqXjNHEG/b69zxl87B9NeayA==
X-Google-Smtp-Source: APXvYqz9Pqwc6YGEtZLEiTUBc3MEmc1JqRRYPRnRlHXUwmrREiZYu1GMABwkLUGU5cM2uP6ApfFTzQ==
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr18012946lji.133.1560951546825; 
 Wed, 19 Jun 2019 06:39:06 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q1sm2705335lfc.79.2019.06.19.06.39.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:05 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:22:31 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 1/3] Rockchip dts32 updates for 5.3 round 1
Message-ID: <20190619132231.6cr245e43utupl5j@localhost>
References: <3004130.oi6ZuZy1Zf@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3004130.oi6ZuZy1Zf@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063908_627185_02F42F9F 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:53:57AM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below and in the replies round1 of Rockchip updates for armsoc.
> 
> As the tag implies this includes a lot of attention to the older rk3288-
> based Veyron line of ChromeOS devices.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts32-1
> 
> for you to fetch changes up to b8925b7c2f867df6ce3e20deb4b3e2b9b32b20ff:
> 
>   ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices (2019-06-06 12:41:04 +0200)

Merged, thanks!


-Olof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
