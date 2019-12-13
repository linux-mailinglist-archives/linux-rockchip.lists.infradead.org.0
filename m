Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AD11E2BA
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 12:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZMagrP+jcDPMVg6wtJgneAXO42fbzMOWVVpjQAV6RA=; b=BNC4Qza8kGEK1/
	tzhx5Br7l4zwNC6ZITMQ4p71l7TjZc8/cOGmn3rq5faH8Obzbyv87CWRH3dr3/p1ggzsUTxmlifj3
	OH1NC3WR9whG2k1Pf8HML/gMsSlD2PAh6MfNKtvt3GW4bP/zrRwTSvRAEhUdH80+IZ3oIPlojWacZ
	0Pf8sfPcu9q6UokKS2v+9cT6e5Yx4YU/6ASAHrpcFq4VdqcMXZJIli0Pf1dHZ1pv8DOSGVD4qMKVx
	SOqDXhr3X1tfhfBmBAaKdMEHkyUVmomWxDdKyxjB3pJE45c9Kq/X7V3hviwWqHKLKWlNMeT5oOUnR
	aTBDIo1YI1ftzGFNfjlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifj3P-0003B0-2J; Fri, 13 Dec 2019 11:24:15 +0000
Received: from outbound.soverin.net ([2a01:4f8:fff0:2d:8::215])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifj3K-00037r-LK
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 11:24:13 +0000
Received: from smtp.soverin.net (unknown [10.10.3.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by outbound.soverin.net (Postfix) with ESMTPS id 1A68262AD5;
 Fri, 13 Dec 2019 11:24:06 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.142]) by
 soverin.net
Subject: Re: RK3288 dwc2 USB OTG + macOS
To: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 Jack Mitchell <ml@embed.me.uk>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
 <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
 <3e45e70d-1e59-373d-76b7-b6a8a6320514@synopsys.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <8a2341be-7b34-54d1-83aa-d8961d2c1618@embed.me.uk>
Date: Fri, 13 Dec 2019 11:24:01 +0000
MIME-Version: 1.0
In-Reply-To: <3e45e70d-1e59-373d-76b7-b6a8a6320514@synopsys.com>
Content-Language: en-US-large
X-Virus-Scanned: clamav-milter 0.101.4 at c03mi01
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_032410_868127_FF213960 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Phillip Karls <prkarls@gmail.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Minas,

On 28/11/2019 11:29, Minas Harutyunyan wrote:
> Hi Jack,
> 
> 
> On 8/30/2019 2:49 PM, Jack Mitchell wrote:
>> On 22/08/2019 17:06, Jack Mitchell wrote:
>>> I'm having issues on a Firefly rk3288 board when trying to use USB
>>> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
>>> with my Linux desktop.
>>>
>>> If I set the dr_mode to "peripheral" macOS will work, but still takes
>>> around 10 seconds to enumerate the device which makes me think it's only
>>> just working. However, I need the port to be in "otg" mode as it will
>>> switch between peripheral/host use cases.
>>>
>>> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
>>> being plugged into the macOS device for 30 seconds, then removed. The
>>> mac in this case is a 2013 macbook pro. Any pointers in the right
>>> direction would be greatly appreciated.
>>>
>>> Regards,
>>> Jack.
>>>
> Sorry, for late response.
> 
> Could you please apply recently submitted patch "[PATCH] usb: dwc2: Fix 
> SET/CLEAR_FEATURE and GET_STATUS flows" and test again.
> 

Tested and confirmed working, many thanks.

Tested-By: Jack Mitchell <ml@embed.me.uk>

>>
>> I've been poking about with this some more and I've managed to bisect
>> the issue down to the following commit
>>
>> 729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow
>>
>> If I build before this commit everything works fine with a g_ether
>> gadget device on mac. Unfortunately it's a rather large change which I
>> can't just revert in master as it's got multiple dependant commits
>> later. So, any advice on what could be causing this or how to help debug
>> it would be much appreciated, as at the moment I've just forward ported
>> the working 4.16 version of the driver over the 5.3-rc6 broken driver
>> which isn't very sustainable in the long run.
> 
> I don't think that issue root cause coming from mentioned by you above 
> patch. Based on log you provided, SET_FEATURE control transfer not 
> completed by gadget - ZLP on status stage not sent to host.
> 
>>
>> Regards,
>> Jack.
>>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
