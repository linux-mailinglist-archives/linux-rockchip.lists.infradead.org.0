Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF01D454B6
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 08:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONIqB8eBnVomnLnPlA36CljrCSqmWLq1Y153iHvv8qo=; b=N9DQD/0mfhM6cK
	DlE4vKAFOtO1k+MLQ8q3hgsm0st6NHaH3mhWlaeqScLYKo5ZzPWdnc+Q/cgUCtYonxHZdHyo8gGIx
	+bJ4DAqCK5II7XgRH/3MmWGsYC8CpR7qOMlEIf8CKmkFpv8ZL9cYeb3na2fZnx20dqxZr76wnE8Ay
	JZvCQLuB45ZnfQ2CuZdLV2nTatYSQgwUIb3PlUzte1SXFLzvXAT9c0YBAfVtIYc8E5mLOJKQi2uO4
	+Dz0ftqoA0SIrlb1GN4QlVrDn/YhHCkNX3AvLDmVLOK1sCndbbCmrRWtJeo8WrfFMtoJCTTHfW2+A
	acVxkNBoOISuf/KW4o/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbfi0-0007Zd-Ul; Fri, 14 Jun 2019 06:29:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbfhr-0007Rw-J5; Fri, 14 Jun 2019 06:29:01 +0000
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E52B020850;
 Fri, 14 Jun 2019 06:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560493735;
 bh=o6p9lVc+DYilRKtF9pajKsHYMRF8rkewSFkOlAnBRH8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JozXoOb8Ksc6M/jxRWxNQoCuZPK/5IvFkxh+M4O9zoywYnsSjvXltT2rFIopAZGVa
 8ZxAp9Gd4x/1rIddNzEm4o7sHNxGxeZPGt16LcX6QGhYmPS2av/K81y5kESJTLL6Kb
 6WEfM0zrV0/lz+O9Drbq/GrlfjzYye/Smlmr/ypM=
Received: by mail-lf1-f45.google.com with SMTP id z15so870887lfh.13;
 Thu, 13 Jun 2019 23:28:54 -0700 (PDT)
X-Gm-Message-State: APjAAAUJBaW5UNI119k1tR5/GZ1lMEQYeHun286ZTZjHOlrf3Ue8YNBf
 zu4/FKfe3zUVr4X1B9dYnOPkg7AvBFABEmpRn8I=
X-Google-Smtp-Source: APXvYqzRXJBwqzBDJLXSnR6wciv/RpnSmt3qlpvlkhRIjxzRerMzGffvz309DswL+/k+vyTpR7UVS0Do0UtSVtBB5qM=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr8998948lfi.159.1560493733233; 
 Thu, 13 Jun 2019 23:28:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190613162703.986-1-tiny.windzz@gmail.com>
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 14 Jun 2019 08:28:42 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfU+nB-_K3ZP9XBFp5bfk-ZvbfSEW96LD4MbtkyWfQZHg@mail.gmail.com>
Message-ID: <CAJKOXPfU+nB-_K3ZP9XBFp5bfk-ZvbfSEW96LD4MbtkyWfQZHg@mail.gmail.com>
Subject: Re: [PATCH 01/10] iommu/exynos: convert to SPDX license tags
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_232859_648971_8C46707A 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, joro@8bytes.org, will.deacon@arm.com,
 agross@kernel.org, iommu@lists.linux-foundation.org, jonathanh@nvidia.com,
 david.brown@linaro.org, robdclark@gmail.com, kgene@kernel.org,
 thierry.reding@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-tegra@vger.kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 at 18:27, Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Updates license to use SPDX-License-Identifier.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/iommu/exynos-iommu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Splitting this per driver is too much... it is not necessary. Such
changes should be done in one patch per subsystem.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
