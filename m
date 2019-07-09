Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB6163E03
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jul 2019 00:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/Mg8sY9CcKqsy1dd3BmPp1HYBE1Mb44YMAUJx1+dEc=; b=jvGV72oHYI1P4z
	agoVE/FPRi7Nibck4aehGoe4+Jfs6+wCU9D2APdTUoCvv1qbPRUVgu48etI/hH+OpiTsd63ehJNBR
	NZqBedilOhdVLMMfjUsC+Z26pXc8adY9GYuVdlylhFBraFfL5CYxIGQqPlGDm+yqa8/gd95w5GrW5
	VCiA148cnuTFCEwygaRJNDASMchP4kKujkqaR2XKyJOcSqDdkHwVi2AG30DTSRxSxgSdpI3vaphB6
	eOXGG3vWvs9USTY73JPAZ36hhXDqgDYF06NPCbAQr1rCdidYPknYhC+YI02eFcwQ3yrL0hVLKHlh3
	nc0VxISIr9F3SB904ftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkywE-0005oA-8q; Tue, 09 Jul 2019 22:50:18 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkywA-0005d2-Ge
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 22:50:15 +0000
Received: by mail-io1-f66.google.com with SMTP id z3so598202iog.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 15:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nvvoh+fbNkBLPpXy4Y6lZA9c7jtYP7QeOvjrEV4cBIw=;
 b=oG3vmKqW593ejh0h3sCTNH/ufeuLJFvKple/lrV69WQzzAa3WdrNKpCHuaLycm84Td
 zA6crEeY4NPbTv0yVyvBYmiLTjhTE/PBnzNyeIbFARIfR0Ytoj5LY2w5e52ZkE4aXRKx
 V+3F1aYyEBfSQtQ06GUX6HIqGeXaadGRfwyEGLfclf46dITBYNtqXsTHmkhuj1c4Xcem
 wj9HrrmaB48LfyIvmhjTGQoXq91aiLzDDZUaRrb+34anjKESBvmyblQAFeMjFv8ARo1h
 qAoWwLGJjaUZayf+7PO8frv3/hDrjvSS7sX3WTsjO1HRBjRIz6YO90qg83YO5R2NDA/R
 ktCg==
X-Gm-Message-State: APjAAAVSjUkfalMH6HKfecVHPSUpwmwWvTDWz2KIXQlkfM1gc2fVRgWR
 mJxt8t5O85huwM1lvBF0Rg==
X-Google-Smtp-Source: APXvYqyIRybL0nbRMpxsdXhfMWV2kUc5p622WEvGhc+cnLHFcA7qWZGwS/KW4h4GpNKPh1jLWlazuQ==
X-Received: by 2002:a05:6602:144:: with SMTP id
 v4mr27703160iot.202.1562712612914; 
 Tue, 09 Jul 2019 15:50:12 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id i4sm292005iog.31.2019.07.09.15.50.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:50:12 -0700 (PDT)
Date: Tue, 9 Jul 2019 16:50:11 -0600
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: document VOP
 gamma LUT address
Message-ID: <20190709225011.GA11245@bogus>
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <20190621211346.1324-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621211346.1324-2-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_155014_577715_4C5AC790 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Jacopo Mondi <jacopo@jmondi.org>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 18:13:44 -0300, Ezequiel Garcia wrote:
> Add the register specifier description for an
> optional gamma LUT address.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * Drop reg-names, suggested by Doug.
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-vop.txt   | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
