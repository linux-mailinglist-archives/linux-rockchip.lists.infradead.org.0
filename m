Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E59DB238
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 18:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mnFFWXgXQfEbBtlhN1ZPpg1AnGSWWYu0AFlg8FTX0c4=; b=fSgO3F4DvUmmD9utHuhcaNi3U
	WKLI06tABrymaBTpxWBmCuzduYAurrdy4dDVndn4X548kX/6j/6NFhwF42pu2JkYF7c4raB99M4/H
	qm4TL0X07pW86IaerMazM2CgChGADG46+ulIPW+90G+Y1zwFS/g2kJiHM3PnMwSI0ZMDtJgRkdMdu
	qRAy6LsNGsT86EzBWPj2kXE4E3bvCs8nNWlQ46aLFRWwV/HWx76ctOSeibcTc+JrX0fcE8FCFuTVM
	DumPYp//od2ScfSz8grKqSgxnZCTw/caRc24UW+yrTuY5GFzgQIhIcIoUGAxMG4as1Yhxc3hGC7Dj
	9JoCVRypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8XK-0005Fe-Br; Thu, 17 Oct 2019 16:22:02 +0000
Received: from tf.think-future.de ([193.7.177.246] helo=think-future.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8XH-0005F6-49
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 16:22:00 +0000
Received: by tf.think-future.de (Postfix, from userid 114)
 id 7B57B3FF29; Thu, 17 Oct 2019 18:21:56 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on tf.think-future.de
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=4.8 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
 FORGED_GMAIL_RCVD,FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,NO_RECEIVED,
 NO_RELAYS autolearn=no autolearn_force=no version=3.4.2
X-Spam-Host: Think-Future.de
X-Spam-Spammy: 
X-Spam-Report: * -1.9 BAYES_00 BODY: Spamwahrscheinlichkeit nach Bayes-Test:
 0-1% *      [score: 0.0000]
 * -0.0 NO_RELAYS Informational: message was not relayed via SMTP
 *  1.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
 *      provider (4omecha[at]gmail.com)
 *  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override
 *      is CUSTOM_MED
 *  1.0 FORGED_GMAIL_RCVD 'From' gmail.com does not match 'Received'
 *      headers
 * -0.0 NO_RECEIVED Informational: message has no Received headers
 *  1.8 NML_ADSP_CUSTOM_MED ADSP custom_med hit, and not from a mailing
 *       list
X-Spam-HP: BAYES_00=-1.9,DKIM_ADSP_CUSTOM_MED=0.001,FORGED_GMAIL_RCVD=1,
 FREEMAIL_FROM=1,NML_ADSP_CUSTOM_MED=1.8,NO_RECEIVED=-0.001,
 NO_RELAYS=-0.001
X-Spam-Pyzor: Reported 0 times.
X-Spam-Relay-Country: 
Date: Thu, 17 Oct 2019 18:21:31 +0200
From: 4omecha@gmail.com
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: rk3328 USB3 controller
Message-Id: <20191017162131.GH14623@think-future.de>
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
 <1b0f65be-51b6-69dd-e204-6d168f17eb7d@think-future.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b0f65be-51b6-69dd-e204-6d168f17eb7d@think-future.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_092159_315061_FA990DF4 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.6 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (4omecha[at]gmail.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_SPF_HELO        No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-10-17 14:07:43, Katsuhiro Suzuki wrote:
>Hello Peter,
>
>USB3 phy driver "rockchip,rk3328-u3phy" has not been implemented on
>upstream linux kernel.
>
>FireflyTeam use the special version of linux that is modified by Rockchip.
>(It seems based on linux-4.4)
>
>rockchip,rk3328-u3phy is provided by
>  https://github.com/FireflyTeam/kernel/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
That's a 404 over here.


>
>If you want to use USB 3.0 with upstream linux, we need to port this
>USB3 phy driver from rockchip-linux to upstream kernel, I think.
>
>Best Regards,
>Katsuhiro Suzuki
>
>
>On 2019/10/17 3:54, Peter Geis wrote:
>>Good Afternoon,
>>
>>Is there a particular reason why the USB3 controller on the rk3328 has
>>not been enabled?
>>It's enabled on the TeamFirefly source [0].
>>I pulled it in to my device tree and have been using a USB3 SSD as my
>>boot device for over a year now.
>>
>>If I were to submit the patch, would y'all be open to pulling it in?
>>
>>[0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>>
>>_______________________________________________
>>Linux-rockchip mailing list
>>Linux-rockchip@lists.infradead.org
>>http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
