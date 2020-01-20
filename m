Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F64142F33
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 17:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=17SLf32rpIABUbnOd0XUsE3s1NR71aiE/LhkkgJmyH4=; b=REqRfJ9RfVLKeCRM0rtOpR36u
	np7ivM/xz/7uVQuGc199K7wkcGb/XECnEE/NxDbAQBrHmVO9IdkM5iv/qbdbDVmVsRlTyxGxo2aLt
	2gMSm3CkOQkXudHo4dEEcPCJ/ldspkhI3Nhu7M7o9cLLjuIEkKufmJc/maSQYbno8PBIJnK+CcfaD
	+oD97NBUlDkIqNBV/c1XwhMc5zP3VpDMVHucDrGJUaPAB1kvBIsODJIacHBmIxfjZnteLep6JZI23
	qowXvBvR/28G/a6+t8dSpdNovYsh0Pa5wjz0g+Qein8A6A2qqTKjeJByLBKSXvPMj9EzDSqIr1m3K
	GUKLzkjmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZXo-0001WN-Pu; Mon, 20 Jan 2020 16:04:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZXh-0001VA-L8
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 16:04:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id p27so22654pli.10
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Jan 2020 08:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6RxjFM/GfKD5nyo9iA2+9b4lmEgTQWkl8cQBrKwCqZs=;
 b=baBZ/42WJWI6QSYxH+wVyJ6ueuMXRsDRjwuDLiKmzBE8yYQBWc/dX0suG7sywu0bJX
 7J1AJmQ28lW0dNoBwWupBCEr8EZLYZjjpKmz3LOtuinAavVoNblnG1O3KUMYuxgLQ91x
 1X+mNDtAgaZBM1jtiUMy3rXdpxywElcY6Yj4IlZ3lZqwiXYanHcD+zG7EjihroeLY/Kd
 XLApWQENwqJqVpyYHrGzvk2FNQ4+0aMV8rclnbQW1i5VUiW5PtaUUwPMpiB8OMpxLFC/
 2p3AjZ9+YarLjLWfRYHakMPCDUwNQOpTQBzKKXUnWKFkC1e3X2q7O1W1p1k8D4jqKaCI
 pUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6RxjFM/GfKD5nyo9iA2+9b4lmEgTQWkl8cQBrKwCqZs=;
 b=iyetpnIB6Ee0ZqqZybzj0rbhrwf6uSNwEscFKFG1X0kFqG6A7O4VHjmUBLW7i8K54S
 SVCnKtsxa3Pusfb/g39LgIi3kK9L/L9fK9i/sZVnLcowk36X5aeUqK+Buolyiim4+WuY
 TNUBWGUnjv9QBE8aHVYywN9E+omf4IRFdKT2bYFCnS8H2g94lh9XBtV+a1F+AZYY0qut
 keYl9AePhB5PpR5LHkKvtzeSFkqdsDsiPtPuW8FRYAVC9fDF8vUn7w1fSL5wwuYGLfl3
 c1GMSJ7YWhMqXbBIJBDcEunmwZUDjyCgSJ6XVkQaHdVYExs38CdWlonVsL9tnaUuu66n
 H6VQ==
X-Gm-Message-State: APjAAAXpfofj4biJ5+EcrM9TcN6qoInEl/gV+LSvqiP6Ho2ZqXWlXFGD
 VtBfAaLwvpD6gcIwde0ahMP1wT93
X-Google-Smtp-Source: APXvYqy+etnS5/3xrC+jjUrFU6lqSkzhah2jdFw43oEIu9cb2x9nHMTrcuxahaQB+/qkjeH7eaLfHw==
X-Received: by 2002:a17:90a:db48:: with SMTP id u8mr291512pjx.54.1579536284631; 
 Mon, 20 Jan 2020 08:04:44 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 c22sm39332864pfo.50.2020.01.20.08.04.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 08:04:43 -0800 (PST)
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Markus Reichl <m.reichl@fivetechno.de>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
 <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
Date: Mon, 20 Jan 2020 08:04:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_080445_713711_BF271B09 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 1/20/20 6:34 AM, Markus Reichl wrote:
> Hi Guenter,
> 
> Am 20.01.20 um 15:21 schrieb Guenter Roeck:
>> On 1/20/20 3:58 AM, Heikki Krogerus wrote:
>>> Hi Markus,
>>>
>>> On Thu, Jan 09, 2020 at 05:29:07PM +0100, Markus Reichl wrote:
>>>> Hi,
>>>>
>>>> I'm working with a ROC-RK3399-PC arm64 board from firefly, circuit sheet [1].
>>>> The board is powered from an USB-C type connector via an FUSB302 PD controller.
>>>> With measured 15W+ power consumption it should use higher voltage PD modes than
>>>> the standard 5V USB-C mode.
>>>>
>>>> When I add the related connector node in DTS [2] the FUSB302 initializes
>>>> the right PD mode (e.g. 15V/3A).
>>>>
>>>> But during initialisation the PD is switched off shortly and the board has a blackout.
>>>> When I inject a backup supply voltage behind the FUSB302 (e.g. at SYS_12V line) during boot
>>>> I can remove the backup after succesfull setting up the PD and the board will run fine.
>>>>
>>>> Is it possible to change the behaviour of the fusb302 driver to not power down the PD supply
>>>> during init?
>>>
>>> I guess it's also possible that the problem is with tcpm.c instead of
>>> fusb302.c. tcpm.c provides the USB PD state matchines. Guenter! Can
>>> you take a look at this?
>>>
>>
>> There was always a problem with handoff from the bootloader. tcpm_init() calls
>> tcpm_reset_port() which turns vbus and vconn off, which I imagine can
>> trigger the situation.
>>
>> Unfortunately I was never able to solve the puzzle. The Type-C protocol does
>> not support any kind of "hand-off" from one component in the system to another.
>> If the state machine doesn't start from a clean state, there is pretty
>> much no guarantee that it ever synchronizes.
>>
>> Maybe someone can find a better solution, but when I wrote the code I just
>> could not get it to work reliably without resetting everything during
>> registration.
>>
>> Note that v4.4 did not include the upstream tcpm code, suggesting the
>> code in the vendor kernel was possibly using a different or backported
>> state machine. Impossible to say what was done there without access
>> to the code.
> 
> The vendor code for fusb302 is here:
> https://github.com/FireflyTeam/kernel/tree/rk3399/firefly/drivers/mfd
> 

AFAICS the vendor code don't reset VBUS, and selectively (only) resets the
PD state machine in the fusb302 on startup. The tcpm state machine is embedded
in the fusb302 driver, making this easier to control.

The fusb302 Linux kernel driver, on the other side, resets the entire fusb302
on initialization, not just PD (bit 0 of the reset register). Question is if
that can be changed to just reset PD (bit 1 of the reset register).
Maybe that would already fix the problem. Can you give it a try ?

Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
