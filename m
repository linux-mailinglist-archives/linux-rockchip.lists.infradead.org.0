Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A46B144078
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 16:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fzpE/s5LB+SLBi6FJtSTExFOYukWPXxf5yxLBdtv3S4=; b=UG7zikIIdmWASmpyePbkyjsh+
	t+aGZJCscxR/r47XEI62xODlDTOnNmB5in4Rvf9sbGhp2lm/HnhLAElmyVnqcKJ4fwwt2MBHbG3pw
	wCaC0P3C+cxW7WLnwkG/bAc+CvEgPApDHqSSgwzgJyLznMY4fhaYeGhRfzp8jET5hgVi4shBWnDiP
	ZShBViSXfIE995OnfdznTsLrGWYuOhC39bpxGciRleyKXqKPEpESzQM61Td26UHyqYZ+aWPg5VcYt
	aFZ/P3B6yhh4knzk2/7at25z05qEswy4ZnvwHCjoWwIMPLsx11uwqd6ikQgylNiZfwzrRfkf8CdqX
	lOcmRpQDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvQ5-0004Zf-S6; Tue, 21 Jan 2020 15:26:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvPq-0004Qy-2H; Tue, 21 Jan 2020 15:26:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id C679F28C03C
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
To: Johan Jonker <jbx6244@gmail.com>
References: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
 <573dc6d1-5857-f3ba-a392-67351db727b5@gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <7c79efd2-f5b0-6736-19b0-4d116714f887@collabora.com>
Date: Tue, 21 Jan 2020 16:26:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <573dc6d1-5857-f3ba-a392-67351db727b5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_072606_239104_DAB0DED4 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 airlied@linux.ie, dafna3@gmail.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, daniel@ffwll.ch,
 kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 21.01.20 16:11, Johan Jonker wrote:
> Hi Dafna,
> 
> 
>>
>>
>> On 21.01.20 15:03, Rob Herring wrote:
>>> On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
>>> <dafna.hirschfeld@collabora.com> wrote:
>>>>
>>>> convert the binding file rockchip-drm.txt to yaml format.
>>>> This was tested and verified with:
>>>> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>>
>>> Also, make sure just 'make dt_binding_check' passes as that checks the
>>> example against all schemas.
>>
>> But this also checks the other schemas in general, and when running it,
>> it fails because of bugs in other schemas.
> 
> 
>> For example with arm=ARM I get:
> 
> Use:
> 
> # enable Rockchip arm in menuconfig
> make ARCH=arm menuconfig
> 
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> and not:
> arm=ARM
> 
yes, sorry, this is what I did. When running with the DT_SCHEMA_FILES 
set then it passes both on ARM and ARM64
but when this variable is not set I get the above error.

Dafna

> 
>>
>>     DTC     Documentation/devicetree/bindings/clock/qcom,gcc.example.dt.yaml
>> Error:
>> Documentation/devicetree/bindings/clock/qcom,gcc.example.dts:111.28-29
>> syntax error
>> FATAL ERROR: Unable to parse input tree
>>
>> Dafna
>>
>>>
>>>> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
