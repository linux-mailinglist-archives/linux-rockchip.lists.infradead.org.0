Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097F91301B6
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 11:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zd/V+9LLQ7acmxgUN0P3Ij8eYkFOYbuIQP5NM+WNR0s=; b=DpQyugQK6DZdoXFWakdmBKNfE+
	tsnLQXGLAK5UV2nGtoHbjH8TzFO9WHFDm0uHgrpob/Z1gz7HK1wryz/jmuRkf3Ee5vsTbHbKe30bh
	ktxCDTPXRVLFPpx9bVHGZYYASp1kANKdvy8goh+vRRWUibPafYFV7UltXPnhiiLou1MCdYQv6I+3K
	dfcVkF7HGPUujaEvay3Qkc7Y2VsV6rKFAreARS2Zi1z+rZWHZnRu3k7vATeGAaUDfKxtM8hHS4WUB
	1uXZvQx49BVx/23R+CI7xtkqDKw4HL8JhG61H4jhHK1MGvasLf8Ft060OW6/nTxdXMUvq4mCIHach
	AkSQtsmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ingFB-0005yJ-Jf; Sat, 04 Jan 2020 10:01:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ingF7-0005xm-UW
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 10:01:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so44547261wrw.8
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 02:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=f60JLF6tOiUS9TAbLUAYZ7Rh9LzzPz6/4Lsp+VulVjU=;
 b=a7RPdcdoJBxolN0j7gtLvtYoYm3kYYnJEuHgYzz460xGDwUWqp6UL/GDlgISA+8d2m
 e67oLHD/NlBPLvuJIEUmzQ57v7bFI6yKfnxJxZ+Jqls1QQgIPJ5LbtF0hvp9lCwAOdsR
 1wRvbuoBwZYTPiwKVsMX2p2WPYSAZGmX9vBE/v/sJHBYsUGC5NRGktZeswOgLgvEXv35
 Tf9YaKKB299/0nbo15ZMxngVY4SI4tmcd+10Pyakda7t/QhsO4kvsGeGq7HQNP/z/ZLW
 GJz1fNuLHbXoSnU57F2/kS+d+Ad+OsWf3Pv1A8zUoXTYOlhnSztPLKYWG6KnK/1Ht+M1
 xsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f60JLF6tOiUS9TAbLUAYZ7Rh9LzzPz6/4Lsp+VulVjU=;
 b=CAzu0fX6oByDE7jDHCmyAb0QjrKX7xvfIvBj8+uHAqFkxFzuk3rJ5cvgtSK2WADzQt
 PN836GTPYueGti/1UmDiMyEwit07Z3QMVTGGIxwleNU0CB9ngVJUwi6c2GXWDwYIyT0P
 tvrL12Ogj+xtZKVgT5x82eBn6k1aiB/onY35PQu1yavwKTFeCCN/WxoNOY1ZPoqswBr+
 vZ7G1ZGqFydoiadmBl+iJLFsO241ZcI+TcqGLL2jwmCBYDk346JkViDIumhd6rxKqRV7
 qJfOdRm3bKIj9jG5OgAPyq6kuZZgfpxBsb/8OC4dfdzP4b/vo9elHlQ4YmK6VeiWa77D
 5Z9Q==
X-Gm-Message-State: APjAAAU5hJOln45zpbEG4kCWHnzap+/vGj5tDMi9Clxb7a8P0kZCrUzu
 QFySCdbQzP/yQsjfDkmysgdmE3qU
X-Google-Smtp-Source: APXvYqz9PKO7SBuJRxIAM9LGavm9wDzJkbV3KkvxIBIOPIeEcBtkYue6sXAwO9Ok97gTbBbxuRkobQ==
X-Received: by 2002:adf:dcc2:: with SMTP id x2mr14713829wrm.24.1578132071342; 
 Sat, 04 Jan 2020 02:01:11 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w13sm64325762wru.38.2020.01.04.02.01.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Jan 2020 02:01:10 -0800 (PST)
To: linux-rockchip@lists.infradead.org
References: <20200104003939.GA15565@bogus>
Subject: Re: Re: [PATCH V3, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS
 support
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <d8816df1-2e00-468e-94f3-06b2845c1a81@gmail.com>
Date: Sat, 4 Jan 2020 11:01:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200104003939.GA15565@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_020114_010028_BAE19A71 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Question for Rob Herring.
See my comments at version 2.
What is the reason that the non valid/existent node options
supports-sd, supports-sd max-frequeency num-slots and disable-wp
together with the many style issues are accepted?

Thanks.

On Mon, 30 Dec 2019 20:19:32 +0530, Akash Gajjar wrote:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
>
> This patch enables
> - Console
> - NAND Flash
> - SD Card
>
> Signed-off-by: Akash Gajjar <akash at openedev.com>
> ---
> Changes for v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>
> Changes for v3
> - Use small S on dts file name
> - Add missing semicolon
> - Remove USB2.0 node support
>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 221 ++++++++++++++++++
>  3 files changed, 227 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
>

Reviewed-by: Rob Herring <robh at kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
