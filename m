Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4971797C6
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 19:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pivF8tVLNjGEhORnPCtNDUBCYmYy5vJM2y3zhVUaJnM=; b=g3/eo+zhr6Qgfz
	mun5albquoN95cx0zHOHX41A3ldavWlQmXgxX/DZ+MK2DePol0T3wIjjaMlesWLDGx21X2x0xM0oc
	V7xjFrur77ebhlhzU1KGs9M79imckDXKfVegK7iVVVwT9pAH0SdUb7Wouucy0mR6CGDhg+WWiHdVt
	ik4VNq3UGehA+3ajohVDLfectBhXxpuXdMX6UJJ3X3T1PBKpVFeIHiTremZ6JFE72xY2GuoAWzAxW
	jjccSoD8t4WS1kzDpG8nt8ZGc2lZBimnOJ5C4crJ1F62HBEDba7pYAFbtPs5zmabnfH7/nVaHNFEx
	3fjwr3yn5tstyKS9DXFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Yge-00057N-JC; Wed, 04 Mar 2020 18:24:04 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YgW-000504-3n; Wed, 04 Mar 2020 18:23:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 4D0B73702361;
 Wed,  4 Mar 2020 19:23:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKsZACVbmvna; Wed,  4 Mar 2020 19:23:47 +0100 (CET)
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Johan Jonker <jbx6244@gmail.com>, Tobias Schramm <t.schramm@manjaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-3-t.schramm@manjaro.org>
 <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <46a66389-c709-2c16-dd9a-f7fd6371a768@manjaro.org>
Date: Wed, 4 Mar 2020 19:24:41 +0100
MIME-Version: 1.0
In-Reply-To: <bcc2c8d4-a2cd-58c1-89af-e42439f8f344@gmail.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_102356_302924_BA258EFD 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

thanks for the additional feedback. I'll send a v4 with your fixes included.

>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			loader@8000 {
>> +				label = "loader";
>> +				reg = <0x0 0x3F8000>;
>> +			};
>> +
>> +			env@3f8000 {
>> +				label = "env";
>> +				reg = <0x3F8000 0x8000>;
>> +			};
>> +
>> +			vendor@7c0000 {
>> +				label = "vendor";
>> +				reg = <0x7C0000 0x40000>;
>> +			};
>> +		};
> 
> Partitions are normaly up to the user and should not be included to dts
> files,
> else could you explain why we need this exception?
> 
Right. I don't see any reason why we would need to keep it either. I'll
remove it.

Tobias

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
