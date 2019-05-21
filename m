Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB74424966
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 09:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zitOmvjW2a30mhL1C4uK4vXFu8PFvyVH2z7Cr0vb7fE=; b=hBv1NZ0g/bZUAJ
	OJjO0yrT/vOBvw0uAd6gUz2VY0z7KPGw4RNFgaKExy2IFSQWEYoe3U0ol9wA9d1PKkyz9nVmnibKg
	ArZUIXk+XyZjXWt3VSTgOTI2AKfGqdYVOL7emCq14J+0xiLzF5Qljs+uOVHjvycUcEKxhqlVBHQWc
	mIo8Zsev4NFkfL8TFMAIYiFOxDC9kcKQVno5ZzTiUCrnnJeHobDy3pkBiq2PimFZhhi0DkpE7wvvn
	i/4qt6iBr6wlZMcC2MEyS5gT748q7HOjnbTlsQ5GexhYdKowNuDDYYxjmfOwTrEHYPyc8lygG0nxn
	C0jExwWzi9XO/xqBM0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzZv-0000ct-JJ; Tue, 21 May 2019 07:52:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzZs-0000cE-EH
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 07:52:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id AD99C2841E1
Subject: Re: [PATCH v4 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
To: Guenter Roeck <groeck@google.com>, Douglas Anderson <dianders@chromium.org>
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-2-dianders@chromium.org>
 <CABXOdTeCtwFSOvHbBTaSqjv0+rzfbc2mVm=PjtZgid_xRAwwtA@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <1ad86217-67b6-bb39-f4ea-ddefaa57c560@collabora.com>
Date: Tue, 21 May 2019 09:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABXOdTeCtwFSOvHbBTaSqjv0+rzfbc2mVm=PjtZgid_xRAwwtA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005252_613186_DAF72C7D 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Guenter Roeck <groeck@chromium.org>,
 Benson Leung <bleung@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 15/5/19 19:02, Guenter Roeck wrote:
> On Wed, May 15, 2019 at 9:48 AM Douglas Anderson <dianders@chromium.org> wrote:
>>
>> In commit 37a186225a0c ("platform/chrome: cros_ec_spi: Transfer
>> messages at high priority") we moved transfers to a high priority
>> workqueue.  This helped make them much more reliable.
>>
>> ...but, we still saw failures.
>>
>> We were actually finding ourselves competing for time with dm-crypt
>> which also scheduled work on HIGHPRI workqueues.  While we can
>> consider reverting the change that made dm-crypt run its work at
>> HIGHPRI, the argument in commit a1b89132dc4f ("dm crypt: use
>> WQ_HIGHPRI for the IO and crypt workqueues") is somewhat compelling.
>> It does make sense for IO to be scheduled at a priority that's higher
>> than the default user priority.  It also turns out that dm-crypt isn't
>> alone in using high priority like this.  loop_prepare_queue() does
>> something similar for loopback devices.
>>
>> Looking in more detail, it can be seen that the high priority
>> workqueue isn't actually that high of a priority.  It runs at MIN_NICE
>> which is _fairly_ high priority but still below all real time
>> priority.
>>
>> Should we move cros_ec_spi to real time priority to fix our problems,
>> or is this just escalating a priority war?  I'll argue here that
>> cros_ec_spi _does_ belong at real time priority.  Specifically
>> cros_ec_spi actually needs to run quickly for correctness.  As I
>> understand this is exactly what real time priority is for.
>>
>> There currently doesn't appear to be any way to use the standard
>> workqueue APIs with a real time priority, so we'll switch over to
>> using using a kthread worker.  We'll match the priority that the SPI
>> core uses when it wants to do things on a realtime thread and just use
>> "MAX_RT_PRIO - 1".
>>
>> This commit plus the patch ("platform/chrome: cros_ec_spi: Request the
>> SPI thread be realtime") are enough to get communications very close
>> to 100% reliable (the only known problem left is when serial console
>> is turned on, which isn't something that happens in shipping devices).
>> Specifically this test case now passes (tested on rk3288-veyron-jerry):
>>
>>   dd if=/dev/zero of=/var/log/foo.txt bs=4M count=512&
>>   while true; do
>>     ectool version > /dev/null;
>>   done
>>
>> It should be noted that "/var/log" is encrypted (and goes through
>> dm-crypt) and also passes through a loopback device.
>>
>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> 
> Reviewed-by: Guenter Roeck <groeck@chromium.org>
> 

Added to the for-next branch for the autobuilders to play with, if all goes well
will be queued in chrome-platform-5.3

Thanks,
 Enric

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
