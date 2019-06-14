Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B806645FE0
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 16:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9qsZDSfYsPuV4dn9i6r/6Q/K8iJgYQRdJzHKTlsHHU=; b=ZTVA5huIRGMxPz/Z2J2BBTOHr
	mQJbEfaNzoi2ZFiT+IkuzXB9FBevKNvRyPyfCuUPONZKZYZm4D0eOdIMih5XH5l1jfWKPmSdZrH58
	gDG32k35/RLLswDUO6mw45CZoouHdxQifJUsKVBQHYKl7tGHIrzKiPD9MYDBUC+iTH8BIjMR93SUv
	QfFHGxxGp9+ZNeUzREhN/XwpLPPFGXiQ7uSNLKHho4aHskIPhkGgqFIx004u8M4lmDZkt5vLH92O4
	ATBn5sjCzrHWhSl2Sg+BX1m5BQj/AFXObPXanr9beq8eoPSWpvI9hjLOJeqDT3jymG9O/S7fvN5Yy
	vYX8WZGJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmmt-0007Lf-3m; Fri, 14 Jun 2019 14:02:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmmb-0006uS-O5; Fri, 14 Jun 2019 14:02:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59C9728;
 Fri, 14 Jun 2019 07:02:20 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8EFF3F718;
 Fri, 14 Jun 2019 07:02:17 -0700 (PDT)
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <5188064.YWmxIpmbGp@phil> <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e5a4f850-27e0-cad3-04bd-6c004fca2b81@arm.com>
Date: Fri, 14 Jun 2019 15:02:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <55b9018e-672e-522b-d0a0-c5655be0f353@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_070221_881037_7F701E78 
X-CRM114-Status: GOOD (  22.88  )
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

On 14/06/2019 14:03, Daniel Lezcano wrote:
> On 14/06/2019 11:35, Heiko Stuebner wrote:
>> Hi Daniel,
>>
>> Am Dienstag, 4. Juni 2019, 18:57:57 CEST schrieb Daniel Lezcano:
>>> Currently the common thermal zones definitions for the rk3399 assumes
>>> multiple thermal zones are supported by the governors. This is not the
>>> case and each thermal zone has its own governor instance acting
>>> individually without collaboration with other governors.
>>>
>>> As the cooling device for the CPU and the GPU thermal zones is the
>>> same, each governors take different decisions for the same cooling
>>> device leading to conflicting instructions and an erratic behavior.
>>>
>>> As the cooling-maps is about to become an optional property, let's
>>> remove the cpu cooling device map from the GPU thermal zone.
>>>
>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
>>>   1 file changed, 9 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index 196ac9b78076..e1357e0f60f7 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -821,15 +821,6 @@
>>>   					type = "critical";
>>>   				};
>>>   			};
>>> -
>>> -			cooling-maps {
>>> -				map0 {
>>> -					trip = <&gpu_alert0>;
>>> -					cooling-device =
>>> -						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> -						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>>> -				};
>>> -			};
>>>   		};
>>>   	};
>>
>> my knowledge of the thermal framework is not that big, but what about the
>> rk3399-devices which further detail the cooling-maps like rk3399-gru-kevin
>> and the rk3399-nanopc-t4 with its fan-handling in the cooling-maps?
> 
> The rk3399-gru-kevin is correct.
> 
> The rk3399-nanopc-t4 is not correct because the cpu and the gpu are
> sharing the same cooling device (the fan). There are different
> configurations:
> 
> 1. The cpu cooling device for the CPU and the fan for the GPU
> 
> 2. Different trip points on the CPU thermal zone, eg. one to for the CPU
> cooling device and another one for the fan.
> 
> There are some variant for the above. If this board is not on battery,
> you may want to give priority to the throughput, so activate the fan
> first and then cool down the CPU. Or if you are on battery, you may want
> to invert the trip points.
> 
> In any case, it is not possible to share the same cooling device for
> different thermal zones.

OK, thanks for the clarification. I'll get my board set up again to 
figure out the best fix for rk3399-nanopc-t4 (FWIW most users are 
probably just using passive cooling or a plain DC fan anyway). You might 
want to raise this issue with the maintainers of 
arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi, since the 
everything-shared-by-everything approach in there was what I used as a 
reference.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
