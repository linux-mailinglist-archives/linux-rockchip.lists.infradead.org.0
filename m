Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5DE138EFF
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 11:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RDXgD0pXt3UhzEP8BHBsj7+ZhX7WK2CLmh1KAPgz4TA=; b=Aubz00ZsLSBcLynj9eUOsh7Ff
	BsCRbIl+bVt494o6LTq6b9HA9XDX5LgmXLDi7I+WFQ81nLxZIxtAhi1xIjl/TLekRkN/70GQAve/F
	C9jNtWQsD9zDUIrvPzCZfNjX4QgoQttZyHsCFHvoB/5j3CSZtiwY28asobq49Tv+Hfh6C0JX4t8gK
	SCw8iw+F07ahJvwN99juHXuPj40u4qVC285xSoqC+rV+wMtat7GGi7QCbjAUpqiL70MNeThOKR2uM
	kd9nv8oYMEgWjufvItL0HC0s//iF5mgdV1QPTmcb/AELmaePmsUiiXH/B/gokIs62j9r+TcJhor33
	97Xx3+AwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwwX-0000KG-BS; Mon, 13 Jan 2020 10:27:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwwI-0000Ab-0S; Mon, 13 Jan 2020 10:27:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6570413D5;
 Mon, 13 Jan 2020 02:27:15 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AC473F534;
 Mon, 13 Jan 2020 02:27:14 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
To: Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
 <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
 <2116127.mXfZQK7onI@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6159eaa4-4729-0c3d-0967-e855e2652772@arm.com>
Date: Mon, 13 Jan 2020 10:27:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2116127.mXfZQK7onI@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022718_096899_326CCD8B 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 13/01/2020 9:26 am, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 10. Januar 2020, 16:40:24 CET schrieb Johan Jonker:
>> Hi,
>>
>> Question for Heiko or rob+dt.
>> Where would should #address-cells and #size-cells go in the dts or to the dtsi.
>> In case they become required in a futhure rockchip-dw-mshc.yaml?
>> ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?
> 
> I don't think it is a required property for the dw-mmc itself, as only
> in special-cases do you need subnodes there. Like emmc and sd-cards
> are completely probeable without needing further information and
> only the wifi/bt chips _might_ need these.
> 
> So I don't think that this is a property of the controller itself, but te
> connected card - hence should stay in the board file.

Indeed, and in general dtc already warns about those properties being 
present unnecessarily, e.g.:

arch/arm64/boot/dts/rockchip/rk3399.dtsi:1812.27-1847.4: Warning 
(avoid_unnecessary_addr_size): /mipi@ff968000: unnecessary 
#address-cells/#size-cells without "ranges" or child "reg" property

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
