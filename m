Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2308F080E
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 Nov 2019 22:17:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/Ntr4ROK1MgkJ5EXlYcrDGZB6iLcEtb6MiMi3scPgg=; b=Z+Idxd3XDp0lhB
	2H1je7dUo7qRV8gBRBgvjujjXidgg8BkFmjfFVNDEXSriYPUPUPHKKhIJCuUo297x3ZETOAwbBUh/
	p4vTJzYlEo0/K09OFPllt/r0wVCGwidfXW6d/a6KOHm/439a7/DmJ1fid36rBypf54aa1qgWSJqf1
	n3ptsIz+6kNZ9Xt4DJ+3SSDFm2VpgEfZJQaYEGqeAM4RNy71lZuJDtWNjshtGojZaRIp/AHz11cIH
	dBHO840TcmNgDJNB1YGRyfzkcfOWQ8LVdjNI8D4CTMsrHFEj5gZ0tR3slr7h50hFEfTTKcbjU7Wfs
	PLMlE4vsmuVcEKNVp7Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6CK-0002Po-Mw; Tue, 05 Nov 2019 21:17:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS68q-0005vn-5s; Tue, 05 Nov 2019 21:13:34 +0000
Received: by mail-ot1-f67.google.com with SMTP id l14so4596742oti.10;
 Tue, 05 Nov 2019 13:13:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=xQpq10Ks8XLSF1aJ2J82yaLZle4uyS06RKMfH207b18=;
 b=ERO71ygIEKFzKBwGq9Dr0sW4JI6Z7LPB0W7CVsqa9uS3T7FDYQyJ+F7mpfwr/dVKCo
 f1tNXJBXFAYTDoxORl3mfPmLmhyHCqtO96WEbggTaeKdAeO5i9la73b9+c5K5AhoV4t+
 nSES6rLJgIAUPXVmagAgDY46C7t1g1frvYGkN4sN6eZuzh9gqdNzi/olfpqX1wo+IeH5
 qTzuWNFt32otnd4osTWz/rA9IfdCZ9TEq3oKzFTX0a3F2TUWi2K06/xHkXa13Ykq/SCi
 DIHS18y74U5CAmRR3zBGzfpHThCkKWztkHuqwpNC3NvaYgkuG6e7thulxH8QSWQPmMu0
 piXA==
X-Gm-Message-State: APjAAAUmqFHiMZqZuHJTpOBzboy3XvmD5xAqMiGSIqPORzxzVa9JAfQf
 1UwFt1MkleQWmL20N03Uag==
X-Google-Smtp-Source: APXvYqwHT0XCg7MQJPjIrO3FGkI6ss3iabZx/QluxT+8GcfXTqMGF+mC6vHeujjKmzoz13wa+CMPtw==
X-Received: by 2002:a05:6830:11d6:: with SMTP id
 v22mr4995027otq.142.1572988410403; 
 Tue, 05 Nov 2019 13:13:30 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c15sm6799521otk.12.2019.11.05.13.13.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:13:29 -0800 (PST)
Date: Tue, 5 Nov 2019 15:13:29 -0600
From: Rob Herring <robh@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Split rk3399-roc-pc for with
 and  without mezzanine board.
Message-ID: <20191105211329.GA8500@bogus>
References: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7293c5f6-a07f-cf51-954f-92907879eea2@fivetechno.de>
Content-Language: de-DE
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131332_250293_7B6AB895 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 4 Nov 2019 16:22:25 +0100, Markus Reichl wrote:
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.
> 
> ---
> v3: Use enum in binding and full name in compatible string and file name.
> v2: Add new compatible string for roc-pc with mezzanine board.
> --
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   4 +-
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  72 ++
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 ++++++++++++++++++
>  5 files changed, 847 insertions(+), 757 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
