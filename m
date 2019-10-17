Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A5DDA4FD
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 07:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fxy1BJ96toSTeTazkT0vCybl7xHhkmUV3elQhDkROhs=; b=RjS1kGL6plraFi0AAsBXZXxfL
	YH6lV+EJB4Bo/v7hlrypYa8dcZnwFNyE4f+n+8+H1v5Vv7ejpwO3eMHloC6pT6sph+h6+9AZIFdOm
	DzQmEKOqNdKAUNvUvmeaTaWF/7eduq+YvVM6jUyMhPBeIfcm9YVaAEX5DzqJQEG3hyfDlBbV0z1tb
	EZ+Dkpa68I0ld6iX4yoEcS/QwymJFWZ04czcsOY1UOhsZvGhPoRf9CEEefEVI7e+JPZXLzyexU3PA
	5bxfsvHSVO9J19GEzPC81j9jagkYJxefntvTKvP4ryzFVYIoZkdRx9c66RwMfDvktywM5Ly2HDxPh
	L9HEBV9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKy1T-00047A-GO; Thu, 17 Oct 2019 05:08:27 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKy0t-0003V8-TJ
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 05:07:54 +0000
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x9H57h84077330;
 Thu, 17 Oct 2019 14:07:44 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp);
 Thu, 17 Oct 2019 14:07:43 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x9H57hh1077327
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Thu, 17 Oct 2019 14:07:43 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: rk3328 USB3 controller
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <1b0f65be-51b6-69dd-e204-6d168f17eb7d@katsuster.net>
Date: Thu, 17 Oct 2019 14:07:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_220752_180674_6F84CD13 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Peter,

USB3 phy driver "rockchip,rk3328-u3phy" has not been implemented on
upstream linux kernel.

FireflyTeam use the special version of linux that is modified by Rockchip.
(It seems based on linux-4.4)

rockchip,rk3328-u3phy is provided by
   https://github.com/FireflyTeam/kernel/drivers/phy/rockchip/phy-rockchip-inno-usb3.c

If you want to use USB 3.0 with upstream linux, we need to port this
USB3 phy driver from rockchip-linux to upstream kernel, I think.

Best Regards,
Katsuhiro Suzuki


On 2019/10/17 3:54, Peter Geis wrote:
> Good Afternoon,
> 
> Is there a particular reason why the USB3 controller on the rk3328 has
> not been enabled?
> It's enabled on the TeamFirefly source [0].
> I pulled it in to my device tree and have been using a USB3 SSD as my
> boot device for over a year now.
> 
> If I were to submit the patch, would y'all be open to pulling it in?
> 
> [0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
