Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BF445A11
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 12:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EofqOuU0WluQOZ5jKUTmY4wPkwpbO8LN2JEx6DWbuXc=; b=UOIwoX8C1KVpF9i2AxDJeS53d
	CCLh3UNhQq4kC7p5NR12H9VabZceyLZs5DgP5qXvBO8DCkuGs2bgyEjppjY9EnmxA4JbRK/YzbAmb
	E+N2fJugMm2GGn6YABA50wPC8FB4nbNfo3uxfeYbH5Qw6n8dDNUeAYk4iTAHzUT96WyNOm8WParOF
	eMq5zCkwpb9I8NGUTpwkncBr2d0Am4gVUZ2W4EEAE4Ht+iS0+w5GEWWsrrhMh+q2XAd1JerOWVCSR
	Gpr/TMpcP5eatsrJnMBoYj58UCPbvlP0gZcggTmkEk6Mg0Cy+PRNwu2vd7AgimT6YuAl2XNjwppNa
	q3VQA9u8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjAQ-0001Ui-9z; Fri, 14 Jun 2019 10:10:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj9J-0007sz-N4; Fri, 14 Jun 2019 10:09:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F06ED2B;
 Fri, 14 Jun 2019 03:09:30 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E6443F246;
 Fri, 14 Jun 2019 03:11:12 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Heiko Stuebner <heiko@sntech.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3ee47d34-bf71-9e53-9387-7407865d3110@arm.com>
Date: Fri, 14 Jun 2019 11:09:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5188064.YWmxIpmbGp@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_030933_864275_C526CFF1 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, dianders@chromium.org, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 14/06/2019 10:35, Heiko Stuebner wrote:
> Hi Daniel,
> 
> Am Dienstag, 4. Juni 2019, 18:57:57 CEST schrieb Daniel Lezcano:
>> Currently the common thermal zones definitions for the rk3399 assumes
>> multiple thermal zones are supported by the governors. This is not the
>> case and each thermal zone has its own governor instance acting
>> individually without collaboration with other governors.
>>
>> As the cooling device for the CPU and the GPU thermal zones is the
>> same, each governors take different decisions for the same cooling
>> device leading to conflicting instructions and an erratic behavior.
>>
>> As the cooling-maps is about to become an optional property, let's
>> remove the cpu cooling device map from the GPU thermal zone.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
>>   1 file changed, 9 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 196ac9b78076..e1357e0f60f7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -821,15 +821,6 @@
>>   					type = "critical";
>>   				};
>>   			};
>> -
>> -			cooling-maps {
>> -				map0 {
>> -					trip = <&gpu_alert0>;
>> -					cooling-device =
>> -						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> -						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> -				};
>> -			};
>>   		};
>>   	};
> 
> my knowledge of the thermal framework is not that big, but what about the
> rk3399-devices which further detail the cooling-maps like rk3399-gru-kevin
> and the rk3399-nanopc-t4 with its fan-handling in the cooling-maps?

FWIW, my knowledge of thermal is probably even less :)

For NanoPC-T4 I think I more or less just took Odroid-XU3/4 as the best 
pwm-fan example and adapted that into the existing RK3399 zones in the 
manner which seemed most logical to my interpretation - if what was 
there wasn't right to begin with, then I may well have done that wrong too.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
